# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Faraday::Connection do

  Faraday::Adapter::Test::Stubs.new do |stub|
    stub.get('/')         { [200, {}, 'root'] }
    stub.get('/foo/bar')  { [200, {}, 'foo bar'] }
  end

  before(:each) do
    ::NewRelic::Agent.manual_start
    @engine = ::NewRelic::Agent.instance.stats_engine
    @engine.clear_stats

    @sampler = ::NewRelic::Agent.instance.transaction_sampler
    @sampler.reset!

    ::DependencyDetection.detect!
  end

  it 'add metrics to default categories' do
    expect(Faraday::Connection).to receive(:trace_execution_scoped) do |metrics|
      expect(metrics).to include('External/sushi.com/all')
      expect(metrics).to include('External/all')
    end
    conn = Faraday::Connection.new 'http://sushi.com'
    conn.get('/')
  end

end

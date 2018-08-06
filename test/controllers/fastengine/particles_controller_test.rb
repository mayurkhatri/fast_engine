require 'test_helper'

module Fastengine
  class ParticlesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @particle = fastengine_particles(:one)
    end

    test "should get index" do
      get particles_url
      assert_response :success
    end

    test "should get new" do
      get new_particle_url
      assert_response :success
    end

    test "should create particle" do
      assert_difference('Particle.count') do
        post particles_url, params: { particle: { name: @particle.name, speed: @particle.speed } }
      end

      assert_redirected_to particle_url(Particle.last)
    end

    test "should show particle" do
      get particle_url(@particle)
      assert_response :success
    end

    test "should get edit" do
      get edit_particle_url(@particle)
      assert_response :success
    end

    test "should update particle" do
      patch particle_url(@particle), params: { particle: { name: @particle.name, speed: @particle.speed } }
      assert_redirected_to particle_url(@particle)
    end

    test "should destroy particle" do
      assert_difference('Particle.count', -1) do
        delete particle_url(@particle)
      end

      assert_redirected_to particles_url
    end
  end
end

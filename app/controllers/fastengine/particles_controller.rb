require_dependency "fastengine/application_controller"

module Fastengine
  class ParticlesController < ApplicationController
    before_action :set_particle, only: [:show, :edit, :update, :destroy]

    # GET /particles
    def index
      @particles = Particle.all
    end

    # GET /particles/1
    def show
    end

    # GET /particles/new
    def new
      @particle = Particle.new
    end

    # GET /particles/1/edit
    def edit
    end

    # POST /particles
    def create
      @particle = Particle.new(particle_params)

      if @particle.save
        redirect_to @particle, notice: 'Particle was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /particles/1
    def update
      if @particle.update(particle_params)
        redirect_to @particle, notice: 'Particle was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /particles/1
    def destroy
      @particle.destroy
      redirect_to particles_url, notice: 'Particle was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_particle
        @particle = Particle.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def particle_params
        params.require(:particle).permit(:name, :speed)
      end
  end
end

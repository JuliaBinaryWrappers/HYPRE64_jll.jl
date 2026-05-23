# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule HYPRE64_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("HYPRE64")
JLLWrappers.@generate_main_file("HYPRE64", Base.UUID("5bee2580-3970-51e6-a8b4-2a17126b60e0"))
end  # module HYPRE64_jll

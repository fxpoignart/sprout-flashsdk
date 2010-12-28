
module FlashSDK

  class FCSH < Sprout::Daemon

    ##
    # The the Ruby file that will load the expected
    # Sprout::Specification.
    #
    # Default value is 'flex4'
    set :pkg_name, 'flex4'

    ##
    # The default pkg version
    #
    set :pkg_version, ">= #{FlashSDK::VERSION}"

    ##
    # The default executable target.
    #
    set :executable, :fcsh

    ##
    # Set the default prompt that should be presented
    #  on stdout when fcsh is ready for input.
    set :prompt, /^\(fcsh\) /

    ##
    # Clear the saved compilation target
    # from memory.
    #
    # @param id [Integer]
    #
    add_action :clear

    ##
    # Perform compilation using COMPC and the
    # provided arguments.
    #
    # @param options [String]
    #
    add_action :compc

    ##
    # Execute a saved compilation from the provided
    # id number.
    #
    # @param id [Integer]
    #
    add_action :compile

    ##
    # Perform compilation using MXMLC and the
    # provided arguments.
    #
    # @param options [String]
    #
    add_action :mxmlc

    ##
    # Exit FCSH
    add_action :quit
  end
end


defmodule UAInspector.ShortCodeMap.OSs do
  @moduledoc """
  Operating System Short Code Map.
  """

  @remote_base "https://raw.githubusercontent.com/piwik/device-detector/master"

  use UAInspector.ShortCodeMap, [
    file_local:  "short_codes.oss.yml",
    file_remote: "#{ @remote_base }/Parser/OperatingSystem.php",
    file_var:    "operatingSystems",
  ]

  def to_ets([{ short, long }]), do: { short, long }
end

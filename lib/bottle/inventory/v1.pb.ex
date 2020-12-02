defmodule Bottle.Inventory.V1.Service do
  @moduledoc false
  use GRPC.Service, name: "bottle.inventory.V1"

  rpc(
    :ComponentAvailabilityList,
    Bottle.Inventory.V1.ComponentAvailabilityListRequest,
    stream(Bottle.Inventory.V1.ComponentAvailabilityListResponse)
  )
end

defmodule Bottle.Inventory.V1.Stub do
  @moduledoc false
  use GRPC.Stub, service: Bottle.Inventory.V1.Service
end
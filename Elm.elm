import Html exposing (Html, text)
import Browser 

type alias Model = 
  String

type Msg =
  None

update : Msg -> Model -> Model
update msg model = 
  case msg of
    None -> model

view : Model -> Html msg
view model =
  text model

main : Program () Model Msg
main =
  Browser.sandbox
    { init = "Hello, world!"
    , update = update
    , view = view
    }
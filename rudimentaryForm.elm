import Html
import Htm.App as App
import Html.Attributes
import Html.Events exposing (onInput)

main =
    App.beginnerProgram { model = model, view = view, update = update }



--MODEL

typ alias Model = 
    { name : String
    , password : String
    , passwordAgain : String
    }




model : Model
model = 
    Model "" "" ""



--UPDATE


type Msg
    = Name String
    | Password String
    | PasswordAgain String




update : Msg -> Model -> Model
update msg model = 
    case msg of 
        Name name ->
          {  model | name = name }


        Password password ->
          { model | password = password }


        PasswordAgain passwordAgain ->
          { model | passwordAgain = password }



--VIEW



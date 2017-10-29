Types::UserType = GraphQL::ObjectType.define do
  name "User"
  description "a user"

  # Define accesible fields below
  # the !types tells schema that value is required and can't return null
  # note: fields need to be camelCase
  field :id, !types.Int
  field :email, !types.String
end

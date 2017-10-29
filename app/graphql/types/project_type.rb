Types::ProjectType = GraphQL::ObjectType.define do
  name "Project"
  description "a project"

  # Define accesible fields below
  # the !types tells schema that value is required and can't return null
  # note: fields need to be camelCase
  field :id, !types.Int
  field :title, !types.String
  field :user, !Types::UserType
end

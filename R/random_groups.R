#' Randomly Assign Participants to Groups
#'
#' Randomly assigns participants to groups while keeping group sizes
#' as equal as possible.
#'
#' @param participants A vector containing participant IDs.
#' @param groups A vector containing the names of the groups.
#' @return A data frame showing each participant's assigned group.
#' @export
random_groups <- function(
    participants,
    groups = c("control", "treatment")
) {
  group_assignments <- rep(
    groups,
    length.out = length(participants)
  )

  group_assignments <- sample(group_assignments)

  data.frame(
    participant = participants,
    group = group_assignments
  )
}


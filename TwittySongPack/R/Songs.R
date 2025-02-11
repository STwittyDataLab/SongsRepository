#' A set of 2000 songs
#'
#' @format a data frame with 2000 observations
#' \describe{
#'   \item{entry_number}{The entry number of the track}
#'   \item{duration_ms} {Duration of the track in milliseconds}
#'   \item{MaxTemp}{Daily maximum temperature in degrees Farhenheit.}
#'   \item{explicit}{Indicates whether the lyrics or content of the song are considered explicit (Boolean expression represented in binary)}
#'   \item{year}{The year the track was released}
#'   \item{popularity}{A measure of the track's popularity (higher values indicate more popular 0-100)}
#'   \item{danceability}{Describes how suitable the track is for dancing (0.0 least danceable, 1.0 most danceable)}
#'   \item{energy}{Represents the perceived intensity and activity of the track (0.0 to 1.0)}
#'   \item{key}{The key the track is in (integers map to standard pitch class notation)}
#'   \item{loudness}{The overall loudness of the track in decibels (dB)}
#'   \item{mode}{ Indicates the modality of the track (0 for minor, 1 for major)}
#'   \item{speechiness}{Detects the presence of spoken words in the track (0.0 to 1.0)}
#'   \item{acousticness}{A confidence measure of whether the track is acoustic (0.0 to 1.0)}
#'   \item{instrumentalness}{Scale of the amount of vocals on the track (0.0 to 1.0)}
#'   \item{liveness}{Detects the presence of an audience in the recording (0.0 to 1.0)}
#'   \item{valence}{Describes the musical positiveness conveyed by the track (0.0 to 1.0). Tracks with high valence sound more positive (happy, cheerful, euphoric), while tracks with low valence sound more negative (sad, depressed, angry)}
#'   \item{tempo}{The overall estimated tempo of the track in beats per minute (BPM)}
#'   \item{genre}{The category of artistic composition, based on for style and subject matter}
#' }
#' @source \url{https://www.kaggle.com/datasets/muzammilbaloch/spotify-top-tracks-dataset-2000-2019/data}
"Songs"

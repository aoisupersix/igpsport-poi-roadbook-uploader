/// Visibility of a roadbook on iGPSPORT.
enum RoadbookPrivacy {
  /// Visible to everyone (`status = 1`).
  public(1),

  /// Visible only to the owner (`status = 0`).
  private(0);

  const RoadbookPrivacy(this.status);

  /// `status` value sent to the iGPSPORT EditRoutesSummary API.
  final int status;
}

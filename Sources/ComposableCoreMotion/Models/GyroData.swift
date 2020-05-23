import CoreMotion

public struct GyroData: Equatable {
  public var rotationRate: CMRotationRate
  public var timestamp: TimeInterval

  public init(_ gyroData: CMGyroData) {
    self.rotationRate = gyroData.rotationRate
    self.timestamp = gyroData.timestamp
  }

  public init(
    rotationRate: CMRotationRate,
    timestamp: TimeInterval
  ) {
    self.rotationRate = rotationRate
    self.timestamp = timestamp
  }

  public static func == (lhs: Self, rhs: Self) -> Bool {
    lhs.rotationRate.x == rhs.rotationRate.x
      && lhs.rotationRate.y == rhs.rotationRate.y
      && lhs.rotationRate.z == rhs.rotationRate.z
      && lhs.timestamp == rhs.timestamp
  }
}

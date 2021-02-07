package com.actuator.custom.check.health;

import org.springframework.boot.actuate.health.Health;
import org.springframework.boot.actuate.health.HealthIndicator;
import org.springframework.stereotype.Component;

@Component("applicationSpecificHealthParameters")
public class CacheHealthIndicator implements HealthIndicator {

@Override
public Health health() {

    return Health.up().withDetail("AppVersion", "0.0.0-SNAPSHOT").build();
  }
}
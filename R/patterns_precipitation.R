# Precipitation Data --------------------------------

# LIQUID-PRECIPITATION
# AA1-AA4
nms_aa = c('precipitation_liquid','period_quantity_hrs','depth',
        'condition_quality','quality_code')
aa <- list(
  ids = paste0("AA", 1:4),
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 11),
      list(c(1,3),c(4,5),c(6,9),c(10,10),c(11,11)),
      nms_aa
    )
  }
)

# LIQUID-PRECIPITATION MONTHLY TOTAL
# AB1
nms_ab1 = c('precipitation_liquid_monthly_total',
        'depth_dimension', 'condition_code',
        'quality_code')
ab1 <- list(
  ids = "AB1",
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 10),
      list(c(1,3),c(4,8),c(9,9),c(10,10)),
      nms_ab1
    )
  }
)

# PRECIPITATION-OBSERVATION-HISTORY
# AC1
nms_ac1 = c('precipitation_observation_history',
        'duration_code', 'characteristic_code',
        'quality_code')
ac1 <- list(
  ids = "AC1",
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 6),
      list(c(1,3),c(4,4),c(5,5),c(6,6)),
      nms_ac1
    )
  }
)

# LIQUID-PRECIPITATION GREATEST AMOUNT IN 24 HOURS, FOR THE MONTH
# AD1
nms_ad1 = c('precipitation_liquid_greatest_24_hrs',
        'depth_dimension', 'condition_code', 'dates_occurrence_1',
        'dates_occurrence_2', 'dates_occurrence_3',
        'quality_code')
ad1 <- list(
  ids = "AD1",
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 22),
      list(c(1,3),c(4,8),c(9,9),c(10,13),c(14,17),c(18,21),c(22,22)),
      nms_ad1
    )
  }
)

# LIQUID-PRECIPITATION, NUMBER OF DAYS WITH SPECIFIC AMOUNTS, FOR THE MONTH
# AE1
nms_ae1 = c(
        'precipitation_liquid_number_days_amt',
        'number_days_.01inch', 'quality_code_.01inch',
        'number_days_.10inch', 'quality_code_.10inch',
        'number_days_.50inch', 'quality_code_.50inch',
        'number_days_1inch', 'quality_code_1inch'
      )
ae1 <- list(
  ids = "AE1",
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 15),
      list(c(1,3),c(4,5),c(6,6),c(7,8),c(9,9),c(10,11),c(12,12),
        c(13,14),c(15,15)),
      nms_ae1
    )
  }
)

# PRECIPITATION-ESTIMATED-OBSERVATION identifier
# AG1
nms_ag1 = c('precipitation_estimated','discrepancy_code',
  'estimated_water_depth')
ag1 <- list(
  ids = "AG1",
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 7),
      list(c(1,3),c(4,4),c(5,7)),
      nms_ag1
    )
  }
)

# LIQUID-PRECIPITATION MAXIMUM SHORT DURATION, FOR THE MONTH
# AH1-AH6
nms_ah = c('precipitation_liquid_max_short_duration',
        'period_quantity','depth_dimension',
        'condition_code','ending_date_time', 'quality_code')
ah <- list(
  ids = paste0("AH", 1:6),
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 19),
      list(c(1,3),c(4,7),c(8,11),c(12,12),c(13,18),c(19,19)),
      nms_ah
    )
  }
)

# LIQUID-PRECIPITATION MAXIMUM SHORT DURATION, FOR THE MONTH
# AI1-AI6
# Note: This data group is identical to the AH1-6 group, for
# the purpose of allowing up to 12 occurrences of these reports.
nms_ai = c('precipitation_liquid_max_short_duration',
        'period_quantity','depth_dimension',
        'condition_code','ending_date_time', 'quality_code')
ai <- list(
  ids = paste0("AI", 1:6),
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 19),
      list(c(1,3),c(4,7),c(8,11),c(12,12),c(13,18),c(19,19)),
      nms_ai
    )
  }
)

# snow depth data
# aj1(x)
nms_aj1 = c('snow_depth','depth_dimension','condition_code',
        'quality_code','equivalent_water_depth',
        'equivalent_water_condition_code',
        'equivalent_water_condition_quality_code')
aj1 <- list(
  ids = "AJ1",
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 17),
      list(c(1,3),c(4,7),c(8,8),c(9,9),c(10,15),c(16,16),c(17,17)),
      nms_aj1
    )
  }
)

# SNOW-DEPTH GREATEST DEPTH ON THE GROUND, FOR THE MONTH
# AK1
nms_ak1 = c('snow_depth_greatest','depth_dimension','condition_code',
        'date_occurrence', 'quality_code')
ak1 <- list(
  ids = "AK1",
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 15),
      list(c(1,3),c(4,7),c(8,8),c(9,14),c(15,15)),
      nms_ak1
    )
  }
)

# SNOW-ACCUMULATION
# AL1-AL4
nms_al = c('snow_accumulation','period_quantity','depth_dimension',
        'condition_code', 'quality_code')
al <- list(
  ids = paste0("AL", 1:4),
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 10),
      list(c(1,3),c(4,5),c(6,8),c(9,9),c(10,10)),
      nms_al
    )
  }
)

# SNOW-ACCUMULATION GREATEST AMOUNT IN 24 HOURS, FOR THE MONTH
# AM1
nms_am1 = c('snow_accumulation_greatest_24_hrs',
        'depth_dimension', 'condition_code',
        'dates_occurrence_1', 'dates_occurrence_2',
        'dates_occurrence_3', 'quality_code')
am1 <- list(
  ids = "AM1",
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 21),
      list(c(1,3),c(4,7),c(8,8),c(9,12),c(13,16),c(17,20),c(21,21)),
      nms_am1
    )
  }
)

# SNOW-ACCUMULATION FOR THE DAY/MONTH
# AN1
nms_an1 =c('snow_accumulation_day_month',
        'period_quantity', 'depth_dimension',
        'condition_code', 'quality_code')
an1 <- list(
  ids = "AN1",
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 12),
      list(c(1,3),c(4,6),c(7,10),c(11,11),c(12,12)),
      nms_an1
    )
  }
)

# LIQUID-PRECIPITATION
# AO1-AO4
nms_ao = c('precipitation_liquid',
        'period_quantity_minutes', 'depth_dimension',
        'condition_code', 'quality_code')
ao <- list(
  ids = paste0("AO", 1:4),
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 11),
      list(c(1,3),c(4,5),c(6,9),c(10,10),c(11,11)),
      nms_ao
    )
  }
)

# 15 Minute LIQUID-PRECIPITATION occurrence
# AP1-AP4
nms_ap = c('precipitation_liquid_15min',
        'gauge_value', 'condition_code', 'quality_code')
ap <- list(
  ids = paste0("AP", 1:4),
  fun = function(x, code) {
    str_pieces(
      str_match_len(x, code, 9),
      list(c(1,3),c(4,7),c(8,8),c(9,9)),
      nms_ap
    )
  }
)

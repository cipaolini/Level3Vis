library(shinytest2)

test_that("{shinytest2} recording: Level3", {
  app <- AppDriver$new(variant = platform_variant(), name = "Level3", height = 961, 
      width = 1619)
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"focs\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"cor\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_relayout-A` = "{\"width\":664,\"height\":400}", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_relayout-A` = "{\"width\":664,\"height\":400}", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_relayout-A` = "{\"width\":664,\"height\":400}", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 
      152, 153, 154, 155, 156, 157), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368615138, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":784,\"x\":-32.2159775894132,\"y\":23.7513575820275}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":405,\"x\":-11.2463088643351,\"y\":30.5057544139284}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":708,\"x\":-18.9554100556125,\"y\":22.8263833043934}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$expect_values()
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":525,\"x\":-9.10075574490779,\"y\":53.3509490746472}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":148,\"x\":-23.6398445385893,\"y\":48.8648453732048}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":243,\"x\":-25.9884822399398,\"y\":47.962572650435}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":567,\"x\":-30.1577632390821,\"y\":42.5404568512613}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":1,\"pointNumber\":0,\"x\":1,\"y\":0.967741935483871,\"customdata\":\"glas/noun\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":1,\"pointNumber\":0,\"x\":1,\"y\":0.967741935483871,\"customdata\":\"glas/noun\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$expect_values()
  app$set_inputs(`plotly_click-A` = "[{\"curveNumber\":1,\"pointNumber\":0,\"x\":1,\"y\":0.967741935483871,\"customdata\":\"glas/noun\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$expect_values(output = "cor")
  app$set_inputs(`plotly_click-A` = "[{\"curveNumber\":1,\"pointNumber\":0,\"x\":1,\"y\":0.967741935483871,\"customdata\":\"glas/noun\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368655425, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$expect_values()
  app$set_inputs(`plotly_afterplot-A` = "\"focs\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"focs\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":1,\"pointNumber\":0,\"x\":1,\"y\":0.967741935483871,\"customdata\":\"glas/noun\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_click-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_doubleclick-A` = "\"cor\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"cor\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_relayout-A` = "{\"xaxis.range[0]\":-0.0390625,\"xaxis.range[1]\":1.04947916666667,\"yaxis.range[0]\":-0.028125,\"yaxis.range[1]\":1.04895833333333}", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 
      152, 153, 154, 155, 156, 157), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368670624, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$expect_values()
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":2,\"pointNumber\":0,\"x\":0.548387096774194,\"y\":1,\"customdata\":\"hand/noun\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":2,\"pointNumber\":1,\"x\":0.516129032258065,\"y\":1,\"customdata\":\"te/prep\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":0,\"x\":0.489583333333333,\"y\":0.979166666666667,\"customdata\":\"belasting/noun\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$expect_values()
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(recall = 0.4)
  app$expect_values()
  app$set_inputs(precision = 0.6)
  app$expect_values()
  app$set_inputs(operator = TRUE)
  app$expect_values()
  app$set_inputs(operator = FALSE)
  app$set_inputs(recall = 0.5)
  app$set_inputs(precision = 0.5)
  app$set_inputs(minfreq = 1)
  app$expect_values()
  app$set_inputs(minfreq = character(0))
  app$set_inputs(minfreq = 1)
  app$expect_values()
  app$set_inputs(minfreq = character(0))
  app$set_inputs(minfreq = 1)
  app$expect_values()
  app$set_inputs(minfreq = character(0))
  app$set_inputs(minfreq = 1)
  app$set_inputs(minfreq = 0)
  app$set_inputs(minfreq = 1)
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":294,\"x\":2.23773743034348,\"y\":48.59009735528}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":77,\"x\":-19.9325334165602,\"y\":-15.4355846550373}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":69,\"x\":11.3522822291713,\"y\":-10.7944924993287}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":15,\"x\":-0.836594869676312,\"y\":-14.1493888301094}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":49,\"x\":-3.34012266985214,\"y\":-16.3446998571148}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":86,\"x\":-8.39236272912646,\"y\":-15.0943286804899}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":73,\"x\":-9.93741730914008,\"y\":-17.0514899257949}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":58,\"x\":-11.9600758481327,\"y\":-18.33790582922}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":90,\"x\":-14.3939719076311,\"y\":-17.0130812712289}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":19,\"x\":-15.12138116092,\"y\":-15.8599398831254}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":42,\"x\":-17.8680058104475,\"y\":-11.8550749112698}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":9,\"x\":-18.1078158830781,\"y\":-7.99357854368131}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":75,\"x\":-16.7786742201678,\"y\":-7.13560475187326}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":20,\"x\":-17.8973701471694,\"y\":-5.33098590318906}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":34,\"x\":-8.63906309292927,\"y\":1.06454834524502}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_click-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_doubleclick-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_relayout-A` = "{\"xaxis.range[0]\":-51.74960040412938,\"xaxis.range[1]\":50.081319416568775,\"yaxis.range[0]\":-31.2785373639466,\"yaxis.range[1]\":35.1103815004814}", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":2,\"pointNumber\":5,\"x\":0.258064516129032,\"y\":0.727272727272727,\"customdata\":\"hij/pron\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_click-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_doubleclick-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_relayout-A` = "{\"xaxis.range[0]\":-51.74960040412938,\"xaxis.range[1]\":50.081319416568775,\"yaxis.range[0]\":-31.2785373639466,\"yaxis.range[1]\":35.1103815004814}", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":2,\"pointNumber\":0,\"x\":0.548387096774194,\"y\":1,\"customdata\":\"hand/noun\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":2,\"pointNumber\":1,\"x\":0.516129032258065,\"y\":1,\"customdata\":\"te/prep\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":2,\"pointNumber\":2,\"x\":0.483870967741935,\"y\":1,\"customdata\":\"hemel/noun\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":0,\"x\":0.489583333333333,\"y\":0.979166666666667,\"customdata\":\"belasting/noun\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_click-A` = "[{\"curveNumber\":0,\"pointNumber\":0,\"x\":0.489583333333333,\"y\":0.979166666666667,\"customdata\":\"belasting/noun\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":2,\"pointNumber\":2,\"x\":0.483870967741935,\"y\":1,\"customdata\":\"hemel/noun\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368785439, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368805450, 0, 4, "b", TRUE, FALSE, TRUE, 
      c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", 
          TRUE, FALSE, TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, 
          FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_search = "b", allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368806497, 0, 4, "be", TRUE, FALSE, TRUE, 
      c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", 
          TRUE, FALSE, TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, 
          FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_search = "be", allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368807560, 0, 4, "belastin", TRUE, FALSE, 
      TRUE, c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, 
          "", TRUE, FALSE, TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, 
          FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_search = "belastin", allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368809031, 0, 4, "belasting", TRUE, FALSE, 
      TRUE, c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, 
          "", TRUE, FALSE, TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, 
          FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_search = "belasting", allow_no_input_binding_ = TRUE)
  app$expect_values()
  app$set_inputs(contexts_rows_current = character(0), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = character(0), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368819473, 0, 4, "belastingAn update input event does not have a corresponding input binding", 
      TRUE, FALSE, TRUE, c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
          TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(FALSE, "", TRUE, FALSE, TRUE), 
      c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_search = "belastingAn update input event does not have a corresponding input binding", 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368820477, 0, 4, "belastingAn update input event does not have a corresponding in", 
      TRUE, FALSE, TRUE, c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
          TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(FALSE, "", TRUE, FALSE, TRUE), 
      c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_search = "belastingAn update input event does not have a corresponding in", 
      allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368821507, 0, 4, "belastingAn update input event d", 
      TRUE, FALSE, TRUE, c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
          TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(FALSE, "", TRUE, FALSE, TRUE), 
      c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_search = "belastingAn update input event d", allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368822527, 0, 4, "b", TRUE, FALSE, TRUE, 
      c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", 
          TRUE, FALSE, TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, 
          FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_search = "b", allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368823614, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_search = "", allow_no_input_binding_ = TRUE)
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":379,\"x\":3.4277077913915,\"y\":-43.7920078583706}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$expect_values()
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":37,\"x\":18.2642524289996,\"y\":12.3274188805137}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":19,\"x\":-0.310761495109055,\"y\":8.79362638512434}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":19,\"x\":-0.310761495109055,\"y\":8.79362638512434}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"tokens\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":468,\"x\":-37.74672227048,\"y\":-25.8936505052534}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_click-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_doubleclick-A` = "\"cor\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_afterplot-A` = "\"cor\"", allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_relayout-A` = "{\"xaxis.range[0]\":-0.0390625,\"xaxis.range[1]\":1.04947916666667,\"yaxis.range[0]\":-0.028125,\"yaxis.range[1]\":1.04895833333333}", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":0,\"pointNumber\":0,\"x\":0.489583333333333,\"y\":0.979166666666667,\"customdata\":\"belasting/noun\"}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 
      152, 153, 154, 155, 156, 157), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368840571, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$expect_values()
  app$click("nextmodel")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368863300, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(medoid = "6")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137, 138, 139, 140, 141, 142, 143, 144), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368869611, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":3,\"pointNumber\":26,\"x\":22.7140314412462,\"y\":3.66055794428593}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":5,\"pointNumber\":59,\"x\":2.6880788281861,\"y\":1.80582698886824}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":5,\"pointNumber\":12,\"x\":1.59344304107587,\"y\":1.23751952600794}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":5,\"pointNumber\":53,\"x\":-8.65151688146945,\"y\":6.01097782568725}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(`plotly_hover-A` = "[{\"curveNumber\":1,\"pointNumber\":10,\"x\":-9.19419158938533,\"y\":5.52835278573832}]", 
      allow_no_input_binding_ = TRUE, priority_ = "event")
  app$set_inputs(`plotly_hover-A` = character(0), allow_no_input_binding_ = TRUE, 
      priority_ = "event")
  app$set_inputs(noise = FALSE)
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 
      152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 
      167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 
      182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 
      197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 
      212, 213, 214, 215, 216), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368873103, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(noise = TRUE)
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137, 138, 139, 140, 141, 142, 143, 144), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368884982, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$click("nextmodel")
  app$click("nextmodel")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 
      152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 
      167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368892225, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368896074, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$click("nextmodel")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 
      152, 153), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368919594, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$click("previous")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368925309, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(lemma = "grijs")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137, 138, 139, 140, 141, 142, 143, 144, 145), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368931209, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(lemma = "heffen")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368942752, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(medoid = "2")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368949728, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$set_inputs(medoid = "3")
  app$set_inputs(contexts_rows_current = c(1, 2, 3, 4), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_rows_all = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 
      14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
      33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 
      52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 
      71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 
      90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 
      107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 
      122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 
      137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 
      152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 
      167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 
      182, 183, 184, 185, 186, 187, 188), allow_no_input_binding_ = TRUE)
  app$set_inputs(contexts_state = c(1661368960744, 0, 4, "", TRUE, FALSE, TRUE, c(TRUE, 
      "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, 
      TRUE), c(FALSE, "", TRUE, FALSE, TRUE), c(TRUE, "", TRUE, FALSE, TRUE)), allow_no_input_binding_ = TRUE)
  app$expect_screenshot()
})

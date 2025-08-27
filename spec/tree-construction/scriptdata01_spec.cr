require "../spec_helper"

describe "scriptdata01" do
  it "00" do
    input = "FOO<script>'Hello'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       \"'Hello'\"\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "FOO<script></script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "FOO<script></script >BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "FOO<script></script/>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "FOO<script></script/ >BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "FOO<script type=\"text/plain\"></scriptx>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       type=\"text/plain\"\n|       \"</scriptx>BAR\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "FOO<script></script foo=\">\" dd>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "FOO<script>'<'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       \"'<'\"\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "FOO<script>'<!'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       \"'<!'\"\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "FOO<script>'<!-'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       \"'<!-'\"\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "FOO<script>'<!--'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       \"'<!--'\"\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "FOO<script>'<!---'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       \"'<!---'\"\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "FOO<script>'<!-->'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       \"'<!-->'\"\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "FOO<script>'<!-- potato'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       \"'<!-- potato'\"\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "FOO<script>'<!-- <sCrIpt'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       \"'<!-- <sCrIpt'\"\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "FOO<script type=\"text/plain\">'<!-- <sCrIpt>'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       type=\"text/plain\"\n|       \"'<!-- <sCrIpt>'</script>BAR\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "FOO<script type=\"text/plain\">'<!-- <sCrIpt> -'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       type=\"text/plain\"\n|       \"'<!-- <sCrIpt> -'</script>BAR\"\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "FOO<script type=\"text/plain\">'<!-- <sCrIpt> --'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       type=\"text/plain\"\n|       \"'<!-- <sCrIpt> --'</script>BAR\"\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "FOO<script>'<!-- <sCrIpt> -->'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       \"'<!-- <sCrIpt> -->'\"\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "FOO<script type=\"text/plain\">'<!-- <sCrIpt> --!>'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       type=\"text/plain\"\n|       \"'<!-- <sCrIpt> --!>'</script>BAR\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "FOO<script type=\"text/plain\">'<!-- <sCrIpt> -- >'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       type=\"text/plain\"\n|       \"'<!-- <sCrIpt> -- >'</script>BAR\"\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "FOO<script type=\"text/plain\">'<!-- <sCrIpt '</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       type=\"text/plain\"\n|       \"'<!-- <sCrIpt '</script>BAR\"\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "FOO<script type=\"text/plain\">'<!-- <sCrIpt/'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       type=\"text/plain\"\n|       \"'<!-- <sCrIpt/'</script>BAR\"\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "FOO<script type=\"text/plain\">'<!-- <sCrIpt\\'</script>BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       type=\"text/plain\"\n|       \"'<!-- <sCrIpt\\'\"\n|     \"BAR\"\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "FOO<script type=\"text/plain\">'<!-- <sCrIpt/'</script>BAR</script>QUX"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       type=\"text/plain\"\n|       \"'<!-- <sCrIpt/'</script>BAR\"\n|     \"QUX\"\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "FOO<script><!--<script>-></script>--></script>QUX"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <script>\n|       \"<!--<script>-></script>-->\"\n|     \"QUX\"\n"
    assert_parses input, output
  end
end

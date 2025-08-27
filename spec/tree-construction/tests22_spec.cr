require "../spec_helper"

describe "tests22" do
  it "0" do
    input = "<a><b><big><em><strong><div>X</a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       <b>\n|         <big>\n|           <em>\n|             <strong>\n|     <big>\n|       <em>\n|         <strong>\n|           <div>\n|             <a>\n|               \"X\"\n\n"
    assert_parses input, output
  end
  it "1" do
    input = "<a><b><div id=1><div id=2><div id=3><div id=4><div id=5><div id=6><div id=7><div id=8>A</a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       <b>\n|     <b>\n|       <div>\n|         id=\"1\"\n|         <a>\n|         <div>\n|           id=\"2\"\n|           <a>\n|           <div>\n|             id=\"3\"\n|             <a>\n|             <div>\n|               id=\"4\"\n|               <a>\n|               <div>\n|                 id=\"5\"\n|                 <a>\n|                 <div>\n|                   id=\"6\"\n|                   <a>\n|                   <div>\n|                     id=\"7\"\n|                     <a>\n|                     <div>\n|                       id=\"8\"\n|                       <a>\n|                         \"A\"\n\n"
    assert_parses input, output
  end
  it "2" do
    input = "<a><b><div id=1><div id=2><div id=3><div id=4><div id=5><div id=6><div id=7><div id=8><div id=9>A</a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       <b>\n|     <b>\n|       <div>\n|         id=\"1\"\n|         <a>\n|         <div>\n|           id=\"2\"\n|           <a>\n|           <div>\n|             id=\"3\"\n|             <a>\n|             <div>\n|               id=\"4\"\n|               <a>\n|               <div>\n|                 id=\"5\"\n|                 <a>\n|                 <div>\n|                   id=\"6\"\n|                   <a>\n|                   <div>\n|                     id=\"7\"\n|                     <a>\n|                     <div>\n|                       id=\"8\"\n|                       <a>\n|                         <div>\n|                           id=\"9\"\n|                           \"A\"\n\n"
    assert_parses input, output
  end
  it "3" do
    input = "<a><b><div id=1><div id=2><div id=3><div id=4><div id=5><div id=6><div id=7><div id=8><div id=9><div id=10>A</a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       <b>\n|     <b>\n|       <div>\n|         id=\"1\"\n|         <a>\n|         <div>\n|           id=\"2\"\n|           <a>\n|           <div>\n|             id=\"3\"\n|             <a>\n|             <div>\n|               id=\"4\"\n|               <a>\n|               <div>\n|                 id=\"5\"\n|                 <a>\n|                 <div>\n|                   id=\"6\"\n|                   <a>\n|                   <div>\n|                     id=\"7\"\n|                     <a>\n|                     <div>\n|                       id=\"8\"\n|                       <a>\n|                         <div>\n|                           id=\"9\"\n|                           <div>\n|                             id=\"10\"\n|                             \"A\"\n\n"
    assert_parses input, output
  end
  it "4" do
    input = "<cite><b><cite><i><cite><i><cite><i><div>X</b>TEST"
    output = "| <html>\n|   <head>\n|   <body>\n|     <cite>\n|       <b>\n|         <cite>\n|           <i>\n|             <cite>\n|               <i>\n|                 <cite>\n|                   <i>\n|       <i>\n|         <i>\n|           <div>\n|             <b>\n|               \"X\"\n|             \"TEST\"\n"
    assert_parses input, output
  end
end

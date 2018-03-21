-define(OPTIONS, [
  {yes,                    global, "-y",                     [{{vice_prv_options, is_true}, to_nothing}]},
  {fix_sub_duration,       global, "-fix_sub_duration",      [{{vice_prv_options, is_true}, to_nothing}]},
  {canvas_size,            global, "-canvas_size",           [{{erlang, is_integer}, to_arg}]},
  {filter_complex,         global, "-filter_complex",        [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {filter_complex_script,  global, "-filter_complex_script", [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {allowed_extensions,     global, "-allowed_extensions",    [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},

  {input_position,         input,  "-ss",                    [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}, {{erlang, is_integer}, to_arg}]},
  {input_eof_position,     input,  "-sseof",                 [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}, {{erlang, is_integer}, to_arg}]},
  {input_duration,         input,  "-t",                     [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}, {{erlang, is_integer}, to_arg}]},
  {decoder,                input,  "-c",                     [{{vice_prv_options, is_list_and_list}, to_dotargs}]},
  {itoffset,               input,  "-itsoffset",             [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}, {{erlang, is_integer}, to_arg}]},
  {input_frame_rate,       input,  "-r",                     [{{vice_prv_options, is_list_and_integer}, to_dotargs}, {{erlang, is_integer}, to_arg}]},
  {input_frame_size,       input,  "-s",                     [{{vice_prv_options, is_list_and_list}, to_dotargs}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {input_pixel_format,     input,  "-pix_fmt",               [{{vice_prv_options, is_list_and_list}, to_dotargs}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {input_sws_flags,        input,  "-sws_flags",             [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {input_audio_frequency,  input,  "-ar",                    [{{vice_prv_options, is_list_and_integer}, to_dotargs}, {{erlang, is_integer}, to_arg}]},
  {input_audio_channels,   input,  "-ac",                    [{{vice_prv_options, is_list_and_integer}, to_dotargs}, {{erlang, is_integer}, to_arg}]},
  {input_acodec,           input,  "-acodec",                [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {guess_layout_max,       input,  "-guess_layout_max",      [{{erlang, is_integer}, to_arg}]},
  {input_vcodec,           input,  "-vcodec",                [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {input_scodec,           input,  "-scodec",                [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {muxdelay,               input,  "-muxdelay",              [{{erlang, is_float}, to_arg}, {{erlang, is_integer}, to_arg}]},
  {muxpreload,             input,  "-muxpreload",            [{{erlang, is_float}, to_arg}, {{erlang, is_integer}, to_arg}]},
  {accurate_seek,          input,  "-accurate_seek",         [{{vice_prv_options, is_true}, to_nothing}]},

  {output_format,          output, "-f",                     [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {output_duration,        output, "-t",                     [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}, {{erlang, is_integer}, to_arg}]},
  {output_position,        output, "-ss",                    [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}, {{erlang, is_integer}, to_arg}]},
  {output_eof_position,    output,  "-sseof",                [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}, {{erlang, is_integer}, to_arg}]},
  {encoder,                output, "-c",                     [{{vice_prv_options, is_list_and_list}, to_dotargs}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {bitrate,                output, "-b",                     [{{vice_prv_options, is_list_and_list}, to_dotargs}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}, {{erlang, is_integer}, to_arg}]},
  {timestamp,              output, "-timestamp",             [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {target,                 output, "-target",                [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {dframes,                output, "-dframes",               [{{erlang, is_integer}, to_arg}]},
  {frames,                 output, "-frames",                [{{vice_prv_options, is_list_and_integer}, to_dotargs}, {{erlang, is_integer}, to_arg}]},
  {qscale,                 output, "-qscale",                [{{vice_prv_options, is_list_and_integer}, to_dotargs}, {{erlang, is_integer}, to_arg}]},
  {filter,                 output, "-filter",                [{{vice_prv_options, is_list_and_integer}, to_dotargs}, {{erlang, is_integer}, to_arg}]},
  {filter_script,          output, "-filter_script",         [{{vice_prv_options, is_list_and_list}, to_dotargs}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]}, % TODO: filename
  {pre,                    output, "-pre",                   [{{vice_prv_options, is_list_and_list}, to_dotargs}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {vframes,                output, "-vframes",               [{{erlang, is_integer}, to_arg}]},
  {output_frame_rate,      output, "-r",                     [{{vice_prv_options, is_list_and_integer}, to_dotargs}, {{erlang, is_integer}, to_arg}]},
  {output_frame_size,      output, "-s",                     [{{vice_prv_options, is_list_and_list}, to_dotargs}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {aspect,                 output, "-aspect",                [{{vice_prv_options, is_list_and_list}, to_dotargs},
                                                              {{vice_prv_options, is_list_and_float}, to_dotargs}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}, {{erlang, is_float}, to_arg}]},
  {no_video_recording,     output, "-vn",                    [{{vice_prv_options, is_true}, to_nothing}]},
  {vcodec,                 output, "-vcodec",                [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {pass,                   output, "-pass",                  [{{vice_prv_options, is_list_and_integer}, to_dotargs}, {{erlang, is_integer}, to_arg}]},
  {vlang,                  output, "-vlang",                 [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {video_filtergraph,      output, "-vf",                    [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {output_pixel_format,    output, "-pix_fmt",               [{{vice_prv_options, is_list_and_list}, to_dotargs}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {output_sws_flags,       output, "-sws_flags",             [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {rc_override,            output, "-rc_override",           [{{vice_prv_options, is_list_and_list}, to_dotargs}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {top,                    output, "-top",                   [{{vice_prv_options, is_list_and_integer}, to_dotargs}, {{erlang, is_integer}, to_arg}]},
  {force_key_frames,       output, "-force_key_frames",      [{{vice_prv_options, is_list_and_list}, to_dotargs}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {copyinkf,               output, "-copyinkf",              [{{vice_prv_options, is_list_and_true}, to_dotargs}, {{vice_prv_options, is_true}, to_nothing}]},
  {aframes,                output, "-aframes",               [{{erlang, is_integer}, to_arg}]},
  {output_audio_frequency, output, "-ar",                    [{{vice_prv_options, is_list_and_integer}, to_dotargs}, {{erlang, is_integer}, to_arg}]},
  {audio_quality,          output, "-aq",                    [{{erlang, is_integer}, to_arg}]},
  {output_audio_channels,  output, "-ac",                    [{{vice_prv_options, is_list_and_integer}, to_dotargs}, {{erlang, is_integer}, to_arg}]},
  {no_audio_recording,     output, "-an",                    [{{vice_prv_options, is_true}, to_nothing}]},
  {output_acodec,          output, "-acodec",                [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {sample_fmt,             output, "-sample_fmt",            [{{vice_prv_options, is_list_and_list}, to_dotargs}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {audio_filtergraph,      output, "-af",                    [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {output_scodec,          output, "-scodec",                [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {no_subtitle_recording,  output, "-sn",                    [{{vice_prv_options, is_true}, to_nothing}]},
  {map,                    output, "-map",                   [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {map_channel,            output, "-map_channel",           [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {map_chapters,           output, "-map_chapters",          [{{erlang, is_integer}, to_arg}]},
  {vsync,                  output, "-vsync",                 [{{erlang, is_integer}, to_arg}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {async,                  output, "-async",                 [{{erlang, is_integer}, to_arg}]},
  {copytb,                 output, "-copytb",                [{{erlang, is_integer}, to_arg}]},
  {shortest,               output, "-shortest",              [{{vice_prv_options, is_true}, to_nothing}]},
  {dts_delta_threshold,    output, "-dts_delta_threshold",   [{{vice_prv_options, is_true}, to_nothing}]},
  {streamid,               output, "-streamid",              [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {bitstream_filters,      output, "-bsf",                   [{{vice_prv_options, is_list_and_list}, to_dotargs}, {{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {timecode,               output, "-timecode",              [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {strict,                 output, "-strict",                [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {metadata,               output, "-metadata",              [{{vice_prv_options, is_list_and_list}, to_kvarg}]},
  {disable_video,          output, "-vn",                    [{{vice_prv_options, is_true}, to_nothing}]},
  {disable_audio,          output, "-an",                    [{{vice_prv_options, is_true}, to_nothing}]},
  {disable_subtitle,       output, "-sn",                    [{{vice_prv_options, is_true}, to_nothing}]},

  {x264_profile,           output, "-profile",               [{{vice_prv_options, is_list_and_list}, to_dotargs}]},
  {x264_level,             output, "-level",                 [{{erlang, is_float}, to_arg}]},
  {x264_refs,              output, "-refs",                  [{{erlang, is_integer}, to_arg}]},

  {start_number,           output, "-start_number",          [{{erlang, is_integer}, to_arg}]},
  {hls_list_size,          output, "-hls_list_size",         [{{erlang, is_integer}, to_arg}]},
  {hls_key_info_file,      output, "-hls_key_info_file",     [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {hls_playlist_type,      output, "-hls_playlist_type",     [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {hls_segment_filename,   output, "-hls_segment_filename",  [{{erlang, is_list}, to_arg}, {{erlang, is_binary}, to_arg}]},
  {hls_time,               output, "-hls_time",              [{{erlang, is_integer}, to_arg}]}
]).

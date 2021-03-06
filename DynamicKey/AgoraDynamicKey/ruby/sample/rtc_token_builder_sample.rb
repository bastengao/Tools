require_relative "../lib/dynamic_key"

expiration_time_in_seconds = 3600

current_time_stamps = Time.now.to_i

params = {
  app_id: '970CA35de60c44645bbae8a215061b33',
  app_certificate: '5CFd2fd1755d40ecb72977518be15d3b',
  channel_name: '7d72365eb983485397e3e3f9d460bdda',
  uid: 2882341273,
  role: AgoraDynamicKey::RTCTokenBuilder::Role::PUBLISHER,
  privilege_expired_ts: current_time_stamps + expiration_time_in_seconds
}

result = AgoraDynamicKey::RTCTokenBuilder.build_token_with_uid params

puts "Token With Int Uid: #{result}"

params_with_account = {
  app_id: '970CA35de60c44645bbae8a215061b33',
  app_certificate: '5CFd2fd1755d40ecb72977518be15d3b',
  channel_name: '7d72365eb983485397e3e3f9d460bdda',
  account: "test_user",
  role: AgoraDynamicKey::RTCTokenBuilder::Role::PUBLISHER,
  privilege_expired_ts: current_time_stamps + expiration_time_in_seconds
}

result = AgoraDynamicKey::RTCTokenBuilder.build_token_with_account params_with_account

puts "Token With UserAccount: #{result}"


params_with_uid_user_defined_privilege = {
  app_id: '970CA35de60c44645bbae8a215061b33',
  app_certificate: '5CFd2fd1755d40ecb72977518be15d3b',
  channel_name: '7d72365eb983485397e3e3f9d460bdda',
  uid: 2882341273,
  join_channel_privilege_expired_ts: current_time_stamps + expiration_time_in_seconds,
  pub_audio_privilege_expired_ts: current_time_stamps + expiration_time_in_seconds,
  pub_video_privilege_expired_ts: current_time_stamps + expiration_time_in_seconds,
  pub_data_stream_privilege_expired_ts: current_time_stamps + expiration_time_in_seconds
}

result = AgoraDynamicKey::RTCTokenBuilder.build_token_with_uid_and_privilege params_with_uid_user_defined_privilege

puts "Token With Int Uid user defined privilege: #{result}"

params_with_account_user_defined_privilege = {
  app_id: '970CA35de60c44645bbae8a215061b33',
  app_certificate: '5CFd2fd1755d40ecb72977518be15d3b',
  channel_name: '7d72365eb983485397e3e3f9d460bdda',
  account: "test_user",
  join_channel_privilege_expired_ts: current_time_stamps + expiration_time_in_seconds,
  pub_audio_privilege_expired_ts: current_time_stamps + expiration_time_in_seconds,
  pub_video_privilege_expired_ts: current_time_stamps + expiration_time_in_seconds,
  pub_data_stream_privilege_expired_ts: current_time_stamps + expiration_time_in_seconds
}

result = AgoraDynamicKey::RTCTokenBuilder.build_token_with_user_account_and_privilege params_with_account_user_defined_privilege

puts "Token With Int Uid user defined privilege: #{result}"

# srttool

## Subcommand

### Split
``````
```bash
srctool split -i '00:10:00,000' subtitle.srt
# generates subtitle-001.srt, ...

srctool split -i '00:10:00,000' -p 'movie' subtitle.srt
# generates movie-001.srt, ...

srctool split -i '00:10:00,000' --output-dir '/home/user/' subtitle.srt
# generates /home/user/subtitle-001.srt, ...

srctool split -i '00:10:00,000' --starting-index 5 subtitle.srt
# generates /home/user/subtitle-005.srt, ...
```


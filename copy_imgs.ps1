$imgs = @(
'media__1780076483318.png',
'media__1780076500361.png',
'media__1780076513496.png',
'media__1780076526415.png',
'media__1780076539629.png',
'media__1780076721213.png',
'media__1780076737462.png',
'media__1780076749085.png',
'media__1780076764143.png',
'media__1780076779003.png',
'media__1780076845073.png',
'media__1780076852322.png',
'media__1780076867858.png',
'media__1780076876915.png'
)

$i = 1
foreach ($img in $imgs) {
    Copy-Item "C:\Users\Win11\.gemini\antigravity\brain\9206dd1c-dcd4-4b7c-8544-136df24e86d5\$img" -Destination "assets\img$i.png" -Force
    $i++
}

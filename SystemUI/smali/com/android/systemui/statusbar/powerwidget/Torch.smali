.class public Lcom/android/systemui/statusbar/powerwidget/Torch;
.super Landroid/app/Activity;
.source "Torch.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static torch:Lcom/android/systemui/statusbar/powerwidget/Torch;


# instance fields
.field private lightOn:Z

.field private mCamera:Landroid/hardware/Camera;

.field private previewOn:Z

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceView:Landroid/view/SurfaceView;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    sput-object p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->torch:Lcom/android/systemui/statusbar/powerwidget/Torch;

    .line 63
    return-void
.end method

.method private disablePhoneSleep()V
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/Torch;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 208
    return-void
.end method

.method private getCamera()V
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 72
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Torch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera.open() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getTorch()Lcom/android/systemui/statusbar/powerwidget/Torch;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/Torch;->torch:Lcom/android/systemui/statusbar/powerwidget/Torch;

    return-object v0
.end method

.method private startPreview()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->previewOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->previewOn:Z

    .line 165
    :cond_0
    return-void
.end method

.method private startWakeLock()V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 176
    const-string v1, "Torch"

    const-string v2, "wakeLock is null, getting a new WakeLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/Torch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 178
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "Torch"

    const-string v2, "PowerManager acquired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v1, 0x1

    const-string v2, "TORCH_WAKE_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 180
    const-string v1, "Torch"

    const-string v2, "WakeLock set"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 183
    const-string v1, "Torch"

    const-string v2, "WakeLock acquired"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->previewOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->previewOn:Z

    .line 172
    :cond_0
    return-void
.end method

.method private stopWakeLock()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 189
    const-string v0, "Torch"

    const-string v1, "WakeLock released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    return-void
.end method

.method private turnLightOff()V
    .locals 6

    .prologue
    .line 127
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->lightOn:Z

    if-eqz v3, :cond_0

    .line 128
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->lightOn:Z

    .line 129
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    .line 130
    const-string v3, "Torch"

    const-string v4, "Y U NO HAVE CAMERA!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 134
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_2

    .line 135
    const-string v3, "Torch"

    const-string v4, "Y U NO HAVE CAMERA PARAMS!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 139
    .local v1, flashModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, flashMode:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 142
    const-string v3, "Torch"

    const-string v4, "Y U NO HAVE FLASH!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_3
    const-string v3, "Torch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flash mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v3, "Torch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flash modes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    const-string v3, "off"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 150
    const-string v3, "off"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Torch;->stopWakeLock()V

    goto :goto_0

    .line 154
    :cond_4
    const-string v3, "Torch"

    const-string v4, "FLASH_MODE_OFF not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private turnLightOn()V
    .locals 6

    .prologue
    .line 95
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    .line 96
    const-string v3, "Torch"

    const-string v4, "Y U NO HAVE CAMERA!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->lightOn:Z

    .line 100
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 101
    .local v2, parameters:Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_2

    .line 102
    const-string v3, "Torch"

    const-string v4, "Y U NO HAVE CAMERA PARAMS!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, flashModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_3

    .line 108
    const-string v3, "Torch"

    const-string v4, "Y U NO HAVE FLASH!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, flashMode:Ljava/lang/String;
    const-string v3, "Torch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flash mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v3, "Torch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flash modes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v3, "torch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    const-string v3, "torch"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    const-string v3, "torch"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Torch;->startWakeLock()V

    goto :goto_0

    .line 121
    :cond_4
    const-string v3, "Torch"

    const-string v4, "FLASH_MODE_TORCH not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 197
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/Torch;->setContentView(I)V

    .line 198
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/powerwidget/Torch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->surfaceView:Landroid/view/SurfaceView;

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Torch;->disablePhoneSleep()V

    .line 203
    const-string v0, "Torch"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Torch;->turnLightOff()V

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Torch;->stopPreview()V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 250
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/Torch;->torch:Lcom/android/systemui/statusbar/powerwidget/Torch;

    .line 252
    :cond_0
    const-string v0, "Torch"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 234
    const-string v0, "Torch"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 213
    const-string v0, "Torch"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Torch;->turnLightOn()V

    .line 228
    const-string v0, "Torch"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 219
    const-string v0, "Torch"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Torch;->getCamera()V

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/Torch;->startPreview()V

    .line 222
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 240
    const-string v0, "Torch"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "I"
    .parameter "J"
    .parameter "K"

    .prologue
    .line 257
    const-string v0, "Torch"

    const-string v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 262
    const-string v1, "Torch"

    const-string v2, "surfaceCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/Torch;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 272
    const-string v0, "Torch"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

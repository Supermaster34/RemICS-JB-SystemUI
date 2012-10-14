.class final Lcom/android/systemui/statusbar/powerwidget/WifiApButton$WifiApStateTracker;
.super Lcom/android/systemui/statusbar/powerwidget/StateTracker;
.source "WifiApButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/WifiApButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiApStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/powerwidget/WifiApButton$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$WifiApStateTracker;-><init>()V

    return-void
.end method

.method private static wifiApStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 84
    packed-switch p0, :pswitch_data_0

    .line 94
    const/4 v0, 0x6

    :goto_0
    return v0

    .line 86
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 88
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 92
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 23
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 25
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$WifiApStateTracker;->wifiApStateToFiveState(I)I

    move-result v1

    .line 28
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x6

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 69
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v2, "wifi_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 75
    .local v1, wifiState:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$WifiApStateTracker;->wifiApStateToFiveState(I)I

    move-result v0

    .line 76
    .local v0, widgetState:I
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$WifiApStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 35
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 37
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 38
    const-string v1, "WifiAPManager"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v1, "WifiAp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v1, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$WifiApStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$WifiApStateTracker$1;-><init>(Lcom/android/systemui/statusbar/powerwidget/WifiApButton$WifiApStateTracker;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/powerwidget/WifiApButton$WifiApStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

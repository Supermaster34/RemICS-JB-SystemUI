.class public Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
.super Landroid/widget/FrameLayout;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/PowerWidget$1;,
        Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;,
        Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private static final sPossibleButtons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/statusbar/powerwidget/PowerButton;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAllButtonClickListener:Landroid/view/View$OnClickListener;

.field private mAllButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

.field private mButtonLayout:Landroid/widget/LinearLayout;

.field private final mButtonNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mButtons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/powerwidget/PowerButton;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLongPressVibePattern:[J

.field private mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mShortPressVibePattern:[J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 56
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    .line 74
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleWifi"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/WifiButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleGPS"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/GPSButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleBluetooth"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/BluetoothButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleBrightness"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/BrightnessButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleSound"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/SoundButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleSync"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/SyncButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleWifiAp"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/WifiApButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleScreenTimeout"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/ScreenTimeoutButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleMobileData"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/MobileDataButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleLockScreen"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/LockScreenButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleNetworkMode"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/NetworkModeButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleAutoRotate"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/AutoRotateButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleAirplane"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/AirplaneButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleFlashlight"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/FlashlightButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleSleepMode"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/SleepButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleMediaPlayPause"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/MediaPlayPauseButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleMediaPrevious"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/MediaPreviousButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleMediaNext"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/MediaNextButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleWimax"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/WimaxButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    const-string v1, "toggleLte"

    const-class v2, Lcom/android/systemui/statusbar/powerwidget/LTEButton;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonNames:Ljava/util/ArrayList;

    .line 106
    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    .line 107
    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mHandler:Landroid/os/Handler;

    .line 120
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002a

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mShortPressVibePattern:[J

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070029

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mLongPressVibePattern:[J

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateButtonLayoutWidth()V

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setupWidget()V

    .line 130
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateButtonLayoutWidth()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->recreateButtonLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getAllObservedUris()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateVisibility()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateHapticFeedbackSetting()V

    return-void
.end method

.method private getAllObservedUris()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v5, uris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 319
    .local v0, button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v3

    .line 321
    .local v3, tmp:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 322
    .local v4, uri:Landroid/net/Uri;
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 323
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    .end local v0           #button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #tmp:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    .end local v4           #uri:Landroid/net/Uri;
    :cond_2
    return-object v5
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .parameter "r"
    .parameter "resid"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 140
    .local v0, ar:[I
    if-nez v0, :cond_1

    .line 141
    const/4 v2, 0x0

    .line 147
    :cond_0
    return-object v2

    .line 143
    :cond_1
    array-length v3, v0

    new-array v2, v3, [J

    .line 144
    .local v2, out:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 145
    aget v3, v0, v1

    int-to-long v3, v3

    aput-wide v3, v2, v1

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getMergedBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 8

    .prologue
    .line 296
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 298
    .local v2, filter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 299
    .local v1, button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    .line 302
    .local v6, tmp:Landroid/content/IntentFilter;
    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    .line 303
    .local v5, num:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 304
    invoke-virtual {v6, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 306
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 312
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    .end local v3           #i:I
    .end local v5           #num:I
    .end local v6           #tmp:Landroid/content/IntentFilter;
    :cond_2
    return-object v2
.end method

.method private loadButton(Ljava/lang/String;)Z
    .locals 6
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 230
    :goto_0
    return v2

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 215
    goto :goto_0

    .line 220
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->sPossibleButtons:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 221
    .local v1, pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mAllButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setExternalClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mAllButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setExternalLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 224
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    .line 230
    goto :goto_0

    .line 225
    .end local v1           #pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PowerWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading button: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 227
    goto :goto_0
.end method

.method private recreateButtonLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->removeAllViews()V

    .line 258
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    .line 259
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 260
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 262
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    .local v0, button:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 264
    .local v3, pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    if-eqz v3, :cond_0

    .line 265
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 266
    .local v1, buttonView:Landroid/view/View;
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 267
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 272
    .end local v0           #button:Ljava/lang/String;
    .end local v1           #buttonView:Landroid/view/View;
    .end local v3           #pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x6

    if-le v4, v5, :cond_2

    .line 274
    new-instance v4, Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 276
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setFadingEdgeLength(I)V

    .line 277
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/high16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setScrollBarStyle(I)V

    .line 278
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 279
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    sget-object v6, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v5, v6}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateScrollbar()V

    .line 281
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v5, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    :goto_1
    return-void

    .line 284
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    sget-object v5, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private setupBroadcastReceiver()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;Lcom/android/systemui/statusbar/powerwidget/PowerWidget$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    .line 349
    :cond_0
    return-void
.end method

.method private unloadAllButtons()V
    .locals 3

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 246
    .local v1, pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    goto :goto_0

    .line 250
    .end local v1           #pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 251
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 252
    return-void
.end method

.method private updateButtonLayoutWidth()V
    .locals 2

    .prologue
    .line 353
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x6

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 354
    return-void
.end method

.method private updateHapticFeedbackSetting()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 388
    iget-object v8, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 389
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v8, "expanded_haptic_feedback"

    invoke-static {v2, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 391
    .local v3, expandedHapticFeedback:I
    const/4 v1, 0x0

    .local v1, clickPattern:[J
    const/4 v6, 0x0

    .line 394
    .local v6, longClickPattern:[J
    if-ne v3, v9, :cond_2

    .line 395
    const-string v8, "haptic_feedback_enabled"

    invoke-static {v2, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v4, :cond_1

    .line 401
    .local v4, hapticFeedback:Z
    :goto_0
    if-eqz v4, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mShortPressVibePattern:[J

    .line 403
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mLongPressVibePattern:[J

    .line 406
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 407
    .local v0, button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v0, v4, v1, v6}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setHapticFeedback(Z[J[J)V

    goto :goto_1

    .end local v0           #button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    .end local v4           #hapticFeedback:Z
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    move v4, v7

    .line 395
    goto :goto_0

    .line 398
    :cond_2
    if-ne v3, v4, :cond_3

    .restart local v4       #hapticFeedback:Z
    :goto_2
    goto :goto_0

    .end local v4           #hapticFeedback:Z
    :cond_3
    move v4, v7

    goto :goto_2

    .line 409
    .restart local v4       #hapticFeedback:Z
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private updateScrollbar()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 372
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v3, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "expanded_hide_scrollbar"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 375
    .local v0, hideScrollBar:Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 381
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 382
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getVerticalScrollbarWidth()I

    move-result v1

    :goto_3
    invoke-virtual {v3, v2, v2, v2, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .end local v0           #hideScrollBar:Z
    :cond_2
    move v0, v2

    .line 373
    goto :goto_1

    .restart local v0       #hideScrollBar:Z
    :cond_3
    move v1, v2

    .line 375
    goto :goto_2

    :cond_4
    move v1, v2

    .line 382
    goto :goto_3
.end method

.method private updateVisibility()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 358
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "expanded_view_widget"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 360
    .local v0, displayPowerWidget:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v5, 0x7f0c0044

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 361
    .local v1, notifScroll:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 362
    .local v2, param:Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v0, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 364
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setVisibility(I)V

    .line 369
    :goto_1
    return-void

    .end local v0           #displayPowerWidget:Z
    .end local v1           #notifScroll:Landroid/view/View;
    .end local v2           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    move v0, v4

    .line 358
    goto :goto_0

    .line 366
    .restart local v0       #displayPowerWidget:Z
    .restart local v1       #notifScroll:Landroid/view/View;
    .restart local v2       #param:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b002c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 367
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public destroyWidget()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "PowerWidget"

    const-string v1, "Clearing any old widget stuffs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->removeAllViews()V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->unobserve()V

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->unloadAllButtons()V

    .line 166
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 134
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateVisibility()V

    .line 136
    return-void
.end method

.method public setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 333
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 334
    .local v1, pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setExternalClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 336
    .end local v1           #pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    :cond_0
    return-void
.end method

.method public setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mAllButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 340
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 341
    .local v1, pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setExternalLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 343
    .end local v1           #pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    :cond_0
    return-void
.end method

.method public setupWidget()V
    .locals 9

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->destroyWidget()V

    .line 171
    const-string v6, "PowerWidget"

    const-string v7, "Setting up widget"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "expanded_widget_buttons"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, buttons:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 175
    const-string v6, "PowerWidget"

    const-string v7, "Default buttons being loaded"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v2, "toggleWifi|toggleBluetooth|toggleGPS|toggleSound"

    .line 178
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|toggleWimax"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    :cond_0
    const-string v6, "PowerWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Button list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v6, "\\|"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 185
    .local v1, button:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->loadButton(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtonNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    :cond_1
    const-string v6, "PowerWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error setting up button: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    .end local v1           #button:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->recreateButtonLayout()V

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateHapticFeedbackSetting()V

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setupBroadcastReceiver()V

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getMergedBroadcastIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 200
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mBroadcastReceiver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    new-instance v6, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    iget-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    .line 205
    iget-object v6, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mObserver:Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->observe()V

    .line 206
    return-void
.end method

.method public updateAllButtons()V
    .locals 3

    .prologue
    .line 290
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 291
    .local v1, pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->update(Landroid/content/Context;)V

    goto :goto_0

    .line 293
    .end local v1           #pb:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    :cond_0
    return-void
.end method

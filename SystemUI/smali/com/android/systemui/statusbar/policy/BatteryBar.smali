.class public Lcom/android/systemui/statusbar/policy/BatteryBar;
.super Landroid/widget/RelativeLayout;
.source "BatteryBar.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isAnimating:Z

.field private mAttached:Z

.field mBatteryBar:Landroid/view/View;

.field mBatteryBarLayout:Landroid/widget/LinearLayout;

.field private mBatteryCharging:Z

.field private mBatteryLevel:I

.field mCharger:Landroid/view/View;

.field mChargerLayout:Landroid/widget/LinearLayout;

.field private mChargingLevel:I

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private shouldAnimateCharging:Z

.field vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/BatteryBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    .line 32
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargingLevel:I

    .line 34
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->shouldAnimateCharging:Z

    .line 36
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isAnimating:Z

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mHandler:Landroid/os/Handler;

    .line 49
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    .line 156
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryBar$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIZ)V
    .locals 1
    .parameter "context"
    .parameter "isCharging"
    .parameter "currentCharge"
    .parameter "isVertical"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    iput p3, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    .line 90
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    .line 91
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryBar;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->updateSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BatteryBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/BatteryBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/BatteryBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/BatteryBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/BatteryBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setProgress(I)V

    return-void
.end method

.method private setProgress(I)V
    .locals 8
    .parameter "n"

    .prologue
    const-wide/high16 v4, 0x4059

    const-wide/high16 v6, 0x3fe0

    .line 201
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    int-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v1, v2

    .line 203
    .local v1, w:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 205
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 206
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    :goto_0
    return-void

    .line 209
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #w:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    int-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v1, v2

    .line 210
    .restart local v1       #w:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 212
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 213
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 183
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "statusbar_battery_bar_color"

    const v5, -0xcc4a1b

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 186
    .local v0, color:I
    const-string v4, "statusbar_battery_bar_animate"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->shouldAnimateCharging:Z

    .line 189
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryCharging:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->shouldAnimateCharging:Z

    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->start()V

    .line 194
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setProgress(I)V

    .line 196
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mCharger:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 198
    return-void

    :cond_0
    move v2, v3

    .line 186
    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isAnimating:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 104
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 105
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    if-nez v5, :cond_0

    .line 106
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    .line 108
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    .line 109
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/policy/BatteryBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBar:Landroid/view/View;

    .line 113
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBar:Landroid/view/View;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 117
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/high16 v0, 0x4080

    .line 118
    .local v0, dp:F
    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v0

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 121
    .local v4, pixels:I
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    .line 123
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    if-eqz v5, :cond_1

    .line 124
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/policy/BatteryBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :goto_0
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mCharger:Landroid/view/View;

    .line 131
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mCharger:Landroid/view/View;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 141
    new-instance v3, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBar;Landroid/os/Handler;)V

    .line 142
    .local v3, observer:Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;->observer()V

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->updateSettings()V

    .line 145
    .end local v0           #dp:F
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    .end local v3           #observer:Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;
    .end local v4           #pixels:I
    :cond_0
    return-void

    .line 127
    .restart local v0       #dp:F
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    .restart local v4       #pixels:I
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/policy/BatteryBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mAttached:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    :cond_0
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 220
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->shouldAnimateCharging:Z

    if-nez v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->vertical:Z

    if-eqz v1, :cond_1

    .line 224
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 226
    .local v0, a:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 227
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 228
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isAnimating:Z

    goto :goto_0

    .line 232
    .end local v0           #a:Landroid/view/animation/TranslateAnimation;
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mBatteryBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 234
    .restart local v0       #a:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 235
    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 236
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->mChargerLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar;->isAnimating:Z

    .line 248
    return-void
.end method

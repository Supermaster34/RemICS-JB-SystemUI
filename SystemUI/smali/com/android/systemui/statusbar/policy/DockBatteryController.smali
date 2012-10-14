.class public Lcom/android/systemui/statusbar/policy/DockBatteryController;
.super Landroid/content/BroadcastReceiver;
.source "DockBatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DockBatteryController$SettingsObserver;
    }
.end annotation


# instance fields
.field private mBatteryStyle:I

.field private mContext:Landroid/content/Context;

.field private mDockPresent:Z

.field private mDockStatus:I

.field private mHandler:Landroid/os/Handler;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 51
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockStatus:I

    .line 52
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockPresent:Z

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mContext:Landroid/content/Context;

    .line 79
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mHandler:Landroid/os/Handler;

    .line 81
    new-instance v1, Lcom/android/systemui/statusbar/policy/DockBatteryController$SettingsObserver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/DockBatteryController$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/DockBatteryController;Landroid/os/Handler;)V

    .line 82
    .local v1, settingsObserver:Lcom/android/systemui/statusbar/policy/DockBatteryController$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DockBatteryController$SettingsObserver;->observe()V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->updateSettings()V

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/DockBatteryController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/DockBatteryController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->updateSettings()V

    return-void
.end method

.method private updateBattery()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 126
    const/16 v2, 0x8

    .line 127
    .local v2, icon:I
    const/16 v4, 0x8

    .line 128
    .local v4, text:I
    const v3, 0x7f0200e2

    .line 130
    .local v3, iconStyle:I
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockPresent:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryStyle:I

    if-eq v6, v8, :cond_1

    .line 131
    const/4 v2, 0x0

    .line 133
    iget v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryStyle:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 134
    const/4 v4, 0x0

    .line 137
    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 138
    const v3, 0x7f0200d0

    .line 144
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 145
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 146
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 147
    .local v5, v:Landroid/widget/ImageView;
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v5           #v:Landroid/widget/ImageView;
    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockStatus:I

    if-ne v6, v8, :cond_1

    .line 140
    const v3, 0x7f0200d9

    goto :goto_0

    .line 151
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 152
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 153
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 154
    .local v5, v:Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 156
    .end local v5           #v:Landroid/widget/TextView;
    :cond_4
    return-void
.end method

.method private updateSettings()V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "status_bar_battery"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mBatteryStyle:I

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->updateBattery()V

    .line 164
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, action:Ljava/lang/String;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    const-string v5, "dock_level"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 102
    .local v3, level:I
    const-string v5, "dock_status"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockStatus:I

    .line 104
    const-string v5, "dock_present"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mDockPresent:Z

    .line 107
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 108
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 109
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 110
    .local v4, v:Landroid/widget/ImageView;
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 111
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mContext:Landroid/content/Context;

    const v6, 0x7f09006a

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v4           #v:Landroid/widget/ImageView;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 116
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 117
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 118
    .local v4, v:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DockBatteryController;->mContext:Landroid/content/Context;

    const v6, 0x7f090086

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    .end local v4           #v:Landroid/widget/TextView;
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DockBatteryController;->updateBattery()V

    .line 123
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #level:I
    :cond_2
    return-void
.end method

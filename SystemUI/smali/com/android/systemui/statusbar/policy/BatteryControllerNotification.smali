.class public Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;
.super Landroid/widget/LinearLayout;
.source "BatteryControllerNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;
    }
.end annotation


# static fields
.field private static mBatteryStyle:I


# instance fields
.field private isAttached:Z

.field private mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryCenterText:Landroid/widget/TextView;

.field private mBatteryEnabled:Z

.field private mBatteryGroup:Landroid/view/ViewGroup;

.field private mBatteryIcon:Landroid/widget/ImageView;

.field private mBatteryText:Landroid/widget/TextView;

.field private mBatteryTextOnly:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

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

.field private mLevel:I

.field private mPlugged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mIconViews:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mLabelViews:Ljava/util/ArrayList;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mLevel:I

    .line 61
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mPlugged:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->isAttached:Z

    .line 110
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setBatteryIcon(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->updateSettings()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method private setBatteryIcon(IZ)V
    .locals 12
    .parameter "level"
    .parameter "plugged"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mLevel:I

    .line 127
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mPlugged:Z

    .line 128
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 129
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v7, "statusbar_battery_icon"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryStyle:I

    .line 132
    if-eqz p2, :cond_0

    const v4, 0x7f020098

    .line 134
    .local v4, icon:I
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 135
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 136
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 137
    .local v6, v:Landroid/widget/ImageView;
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 139
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    const v8, 0x7f09006a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #icon:I
    .end local v6           #v:Landroid/widget/ImageView;
    :cond_0
    const v4, 0x7f02008f

    goto :goto_0

    .line 142
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #icon:I
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 143
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    .line 144
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 145
    .local v6, v:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    const v8, 0x7f090020

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 150
    .end local v6           #v:Landroid/widget/TextView;
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryGroup:Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    .line 151
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 156
    .local v2, formatted:Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3f333333

    invoke-direct {v5, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 158
    .local v5, style:Landroid/text/style/CharacterStyle;
    const/16 v7, 0xa

    if-ge p1, v7, :cond_4

    .line 159
    const/4 v7, 0x1

    const/4 v8, 0x2

    const/16 v9, 0x22

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 168
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    if-eqz p2, :cond_6

    .line 171
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    const v8, -0xff0100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    .end local v2           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v5           #style:Landroid/text/style/CharacterStyle;
    :cond_3
    :goto_4
    return-void

    .line 161
    .restart local v2       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v5       #style:Landroid/text/style/CharacterStyle;
    :cond_4
    const/16 v7, 0x64

    if-ge p1, v7, :cond_5

    .line 162
    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x22

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 165
    :cond_5
    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0x22

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 172
    :cond_6
    const/16 v7, 0x10

    if-ge p1, v7, :cond_7

    .line 173
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    const/high16 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 175
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    const v8, -0xcc4a1b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4
.end method

.method private updateSettings()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 223
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 225
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "notification_battery_display"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryEnabled:Z

    .line 228
    const-string v1, "statusbar_battery_icon"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryStyle:I

    .line 231
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryEnabled:Z

    if-eqz v1, :cond_1

    .line 232
    sget v1, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryStyle:I

    packed-switch v1, :pswitch_data_0

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    .line 285
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mPlugged:Z

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setBatteryIcon(IZ)V

    .line 287
    return-void

    :cond_0
    move v1, v2

    .line 225
    goto :goto_0

    .line 234
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto :goto_1

    .line 241
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto :goto_1

    .line 248
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto :goto_1

    .line 255
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto :goto_1

    .line 262
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto/16 :goto_1

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto/16 :goto_1

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public isVisible(Z)V
    .locals 5
    .parameter "show"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 202
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 203
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "notification_battery_display"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryEnabled:Z

    .line 206
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->isAttached:Z

    if-eqz v1, :cond_0

    .line 207
    if-eqz p1, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->updateSettings()V

    .line 219
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 203
    goto :goto_0

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->init()V

    .line 81
    const v1, 0x7f0c0002

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryGroup:Landroid/view/ViewGroup;

    .line 82
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    .line 83
    const v1, 0x7f0c0004

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryText:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0c0005

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryCenterText:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f0c0006

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryTextOnly:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->addIconView(Landroid/widget/ImageView;)V

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->isAttached:Z

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;Landroid/os/Handler;)V

    .line 91
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification$SettingsObserver;->observe()V

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerNotification;->updateSettings()V

    .line 94
    return-void
.end method

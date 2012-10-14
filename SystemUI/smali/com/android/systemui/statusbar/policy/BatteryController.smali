.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/widget/LinearLayout;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;
    }
.end annotation


# static fields
.field private static mBatteryStyle:I


# instance fields
.field private mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryCenterText:Landroid/widget/TextView;

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
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    .line 105
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryController;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BatteryController;->setBatteryIcon(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateSettings()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method private setBatteryIcon(IZ)V
    .locals 12
    .parameter "level"
    .parameter "plugged"

    .prologue
    .line 121
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    .line 122
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    .line 123
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 124
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v7, "statusbar_battery_icon"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStyle:I

    .line 127
    if-eqz p2, :cond_0

    const v4, 0x7f020098

    .line 129
    .local v4, icon:I
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 130
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 131
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 132
    .local v6, v:Landroid/widget/ImageView;
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 134
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

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

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 127
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #icon:I
    .end local v6           #v:Landroid/widget/ImageView;
    :cond_0
    const v4, 0x7f02008f

    goto :goto_0

    .line 137
    .restart local v0       #N:I
    .restart local v3       #i:I
    .restart local v4       #icon:I
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 138
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    .line 139
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 140
    .local v6, v:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

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

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 145
    .end local v6           #v:Landroid/widget/TextView;
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryGroup:Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    .line 146
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
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

    .line 151
    .local v2, formatted:Landroid/text/SpannableStringBuilder;
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3f333333

    invoke-direct {v5, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 153
    .local v5, style:Landroid/text/style/CharacterStyle;
    const/16 v7, 0xa

    if-ge p1, v7, :cond_4

    .line 154
    const/4 v7, 0x1

    const/4 v8, 0x2

    const/16 v9, 0x22

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 163
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    if-eqz p2, :cond_6

    .line 166
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    const v8, -0xff0100

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    .end local v2           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v5           #style:Landroid/text/style/CharacterStyle;
    :cond_3
    :goto_4
    return-void

    .line 156
    .restart local v2       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v5       #style:Landroid/text/style/CharacterStyle;
    :cond_4
    const/16 v7, 0x64

    if-ge p1, v7, :cond_5

    .line 157
    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x22

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 160
    :cond_5
    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0x22

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    .line 167
    :cond_6
    const/16 v7, 0x10

    if-ge p1, v7, :cond_7

    .line 168
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    const/high16 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 170
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    const v8, -0xcc4a1b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "statusbar_battery_icon"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStyle:I

    .line 200
    sget v1, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryStyle:I

    packed-switch v1, :pswitch_data_0

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->setVisibility(I)V

    .line 245
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->setBatteryIcon(IZ)V

    .line 247
    return-void

    .line 202
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->setVisibility(I)V

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->setVisibility(I)V

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->setVisibility(I)V

    goto :goto_0

    .line 223
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->setVisibility(I)V

    goto :goto_0

    .line 230
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->setVisibility(I)V

    goto :goto_0

    .line 200
    nop

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
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->init()V

    .line 78
    const v1, 0x7f0c0002

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryGroup:Landroid/view/ViewGroup;

    .line 79
    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    .line 80
    const v1, 0x7f0c0004

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryText:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0c0005

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryCenterText:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0c0006

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryTextOnly:Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 85
    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    .line 86
    .local v0, settingsObserver:Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController$SettingsObserver;->observe()V

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateSettings()V

    .line 89
    return-void
.end method

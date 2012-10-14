.class public Lcom/android/systemui/statusbar/powerwidget/SoundButton;
.super Lcom/android/systemui/statusbar/powerwidget/PowerButton;
.source "SoundButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    }
.end annotation


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mRingerValues:[I

.field private mRingerValuesIndex:I

.field private final mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private mRingersIndex:I

.field private final mSilentRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private final mSoundRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private final mSoundVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

.field private final mVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 26
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->OBSERVED_URIS:Ljava/util/List;

    .line 32
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "expanded_ring_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v9, 0x1

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;-><init>()V

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSilentRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 37
    new-instance v3, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v4, p0

    move v5, v9

    move v7, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 39
    new-instance v3, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v4, p0

    move v5, v9

    move v7, v6

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 41
    new-instance v7, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v8, p0

    move v10, v9

    move v11, v6

    move v12, v9

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 43
    new-array v0, v13, [Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSilentRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mSoundVibrateRinger:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    .line 46
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    .line 48
    new-array v0, v13, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    .line 51
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    .line 56
    const-string v0, "toggleSound"

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mType:Ljava/lang/String;

    .line 57
    return-void

    .line 48
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/powerwidget/SoundButton;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->ensureAudioManager(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/powerwidget/SoundButton;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private ensureAudioManager(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 182
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    .line 184
    :cond_0
    return-void
.end method

.method private findCurrentState(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->ensureAudioManager(Landroid/content/Context;)V

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vibrate_in_silent"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_2

    move v2, v1

    .line 155
    .local v2, vibrateInSilent:Z
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v3

    .line 156
    .local v3, vibrateSetting:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 160
    .local v4, ringerMode:I
    if-nez v2, :cond_3

    if-nez v4, :cond_3

    .line 161
    const/4 v3, 0x0

    .line 171
    :cond_0
    :goto_1
    new-instance v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;-><init>(Lcom/android/systemui/statusbar/powerwidget/SoundButton;ZIIZ)V

    .line 172
    .local v0, ringer:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    array-length v1, v1

    if-ge v6, v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    aget-object v1, v1, v6

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 174
    iput v6, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    .line 178
    :cond_1
    return-void

    .end local v0           #ringer:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    .end local v2           #vibrateInSilent:Z
    .end local v3           #vibrateSetting:I
    .end local v4           #ringerMode:I
    .end local v6           #i:I
    :cond_2
    move v2, v5

    .line 153
    goto :goto_0

    .line 162
    .restart local v2       #vibrateInSilent:Z
    .restart local v3       #vibrateSetting:I
    .restart local v4       #ringerMode:I
    :cond_3
    if-nez v2, :cond_4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    .line 163
    const/4 v2, 0x1

    .line 164
    if-nez v3, :cond_0

    .line 165
    const/4 v3, 0x2

    goto :goto_1

    .line 167
    :cond_4
    if-eqz v2, :cond_0

    if-ne v4, v1, :cond_0

    .line 168
    const/4 v3, 0x2

    goto :goto_1

    .line 172
    .restart local v0       #ringer:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    .restart local v6       #i:I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private updateSettings(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "resolver"

    .prologue
    .line 136
    const-string v2, "expanded_ring_mode"

    invoke-static {p1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, modes:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_2

    .line 139
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    .line 148
    :cond_1
    return-void

    .line 143
    :cond_2
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->INTENT_FILTER:Landroid/content/IntentFilter;

    return-object v0
.end method

.method protected getObservedUris()Ljava/util/List;
    .locals 1
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
    .line 127
    sget-object v0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected handleLongClick(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    const/4 v1, 0x1

    return v1
.end method

.method protected onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->updateSettings(Landroid/content/ContentResolver;)V

    .line 123
    return-void
.end method

.method protected setupButton(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->setupButton(Landroid/view/View;)V

    .line 62
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->updateSettings(Landroid/content/ContentResolver;)V

    .line 66
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-void
.end method

.method protected toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 99
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    .line 100
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    .line 101
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    .line 104
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_1

    .line 105
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingers:[Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;

    iget v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    aget-object v0, v1, v2

    .line 108
    .local v0, ringer:Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton$Ringer;->execute(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method protected updateState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 70
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->findCurrentState(Landroid/content/Context;)V

    .line 71
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 90
    iget v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingersIndex:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValues:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 91
    iput v0, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mRingerValuesIndex:I

    .line 95
    :cond_0
    return-void

    .line 73
    .end local v0           #i:I
    :pswitch_0
    const v1, 0x7f02008a

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mIcon:I

    .line 74
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mState:I

    goto :goto_0

    .line 77
    :pswitch_1
    const v1, 0x7f02010a

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mIcon:I

    .line 78
    iput v3, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mState:I

    goto :goto_0

    .line 81
    :pswitch_2
    const v1, 0x7f020086

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mIcon:I

    .line 82
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mState:I

    goto :goto_0

    .line 85
    :pswitch_3
    const v1, 0x7f020087

    iput v1, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mIcon:I

    .line 86
    iput v2, p0, Lcom/android/systemui/statusbar/powerwidget/SoundButton;->mState:I

    goto :goto_0

    .line 89
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

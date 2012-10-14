.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;
    }
.end annotation


# instance fields
.field protected mAmPmStyle:I

.field protected mAttached:Z

.field protected mCalendar:Ljava/util/Calendar;

.field protected mClockColor:I

.field protected mClockFormat:Ljava/text/SimpleDateFormat;

.field protected mClockFormatString:Ljava/lang/String;

.field protected mClockStyle:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mWeekdayStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mWeekdayStyle:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockStyle:I

    .line 79
    const v0, 0x1060012

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockColor:I

    .line 133
    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 17

    .prologue
    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 161
    .local v5, context:Landroid/content/Context;
    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    .line 164
    .local v3, b24:Z
    if-eqz v3, :cond_3

    .line 165
    const v9, 0x104008d

    .line 170
    .local v9, res:I
    :goto_0
    const v1, 0xef00

    .line 171
    .local v1, MAGIC1:C
    const v2, 0xef01

    .line 174
    .local v2, MAGIC2:C
    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 176
    new-instance v11, Ljava/text/SimpleDateFormat;

    invoke-direct {v11, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v11, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 177
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    .line 182
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 183
    .local v4, calendar:Ljava/util/Calendar;
    const/4 v14, 0x7

    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 185
    .local v6, day:I
    const/4 v13, 0x0

    .line 187
    .local v13, todayIs:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 189
    .local v10, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/Clock;->mWeekdayStyle:I

    if-eqz v14, :cond_0

    .line 190
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/statusbar/policy/Clock;->whatDay(I)Ljava/lang/String;

    move-result-object v13

    .line 191
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 194
    :cond_0
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 196
    .local v8, formatted:Landroid/text/SpannableStringBuilder;
    if-nez v3, :cond_1

    .line 197
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    if-eqz v14, :cond_1

    .line 198
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 199
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v8, v14, v15}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 209
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/Clock;->mWeekdayStyle:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2

    .line 210
    if-eqz v13, :cond_2

    .line 211
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/Clock;->mWeekdayStyle:I

    if-nez v14, :cond_6

    .line 212
    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual {v8, v14, v15}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 222
    :cond_2
    :goto_3
    return-object v8

    .line 167
    .end local v1           #MAGIC1:C
    .end local v2           #MAGIC2:C
    .end local v4           #calendar:Ljava/util/Calendar;
    .end local v6           #day:I
    .end local v7           #format:Ljava/lang/String;
    .end local v8           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v9           #res:I
    .end local v10           #result:Ljava/lang/String;
    .end local v11           #sdf:Ljava/text/SimpleDateFormat;
    .end local v13           #todayIs:Ljava/lang/String;
    :cond_3
    const v9, 0x104008c

    .restart local v9       #res:I
    goto/16 :goto_0

    .line 179
    .restart local v1       #MAGIC1:C
    .restart local v2       #MAGIC2:C
    .restart local v7       #format:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .restart local v11       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_1

    .line 201
    .restart local v4       #calendar:Ljava/util/Calendar;
    .restart local v6       #day:I
    .restart local v8       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v10       #result:Ljava/lang/String;
    .restart local v13       #todayIs:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 202
    new-instance v12, Landroid/text/style/RelativeSizeSpan;

    const v14, 0x3f333333

    invoke-direct {v12, v14}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 203
    .local v12, style:Landroid/text/style/CharacterStyle;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v8, v12, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 214
    .end local v12           #style:Landroid/text/style/CharacterStyle;
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/Clock;->mWeekdayStyle:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 215
    new-instance v12, Landroid/text/style/RelativeSizeSpan;

    const v14, 0x3f333333

    invoke-direct {v12, v14}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 216
    .restart local v12       #style:Landroid/text/style/CharacterStyle;
    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v8, v12, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3
.end method

.method private whatDay(I)Ljava/lang/String;
    .locals 1
    .parameter "today"

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, todayIs:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 254
    :goto_0
    return-object v0

    .line 232
    :pswitch_0
    const-string v0, "SUN "

    .line 233
    goto :goto_0

    .line 235
    :pswitch_1
    const-string v0, "MON "

    .line 236
    goto :goto_0

    .line 238
    :pswitch_2
    const-string v0, "TUE "

    .line 239
    goto :goto_0

    .line 241
    :pswitch_3
    const-string v0, "WED "

    .line 242
    goto :goto_0

    .line 244
    :pswitch_4
    const-string v0, "THU "

    .line 245
    goto :goto_0

    .line 247
    :pswitch_5
    const-string v0, "FRI "

    .line 248
    goto :goto_0

    .line 250
    :pswitch_6
    const-string v0, "SAT "

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 97
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v2, :cond_0

    .line 98
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 113
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    .line 119
    new-instance v1, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/Clock;Landroid/os/Handler;)V

    .line 120
    .local v1, settingsObserver:Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/Clock$SettingsObserver;->observe()V

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateSettings()V

    .line 122
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 131
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 152
    const-string v0, "99:99"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateClockVisibility()V
    .locals 2

    .prologue
    .line 309
    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateSettings()V
    .locals 4

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 287
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 290
    .local v0, defaultColor:I
    const-string v2, "statusbar_clock_am_pm_style"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    .line 292
    const-string v2, "statusbar_clock_style"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockStyle:I

    .line 294
    const-string v2, "statusbar_clock_weekday"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mWeekdayStyle:I

    .line 297
    const-string v2, "statusbar_clock_color"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockColor:I

    .line 299
    iget v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockColor:I

    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_0

    .line 301
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockColor:I

    .line 303
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockColor:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setTextColor(I)V

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 306
    return-void
.end method

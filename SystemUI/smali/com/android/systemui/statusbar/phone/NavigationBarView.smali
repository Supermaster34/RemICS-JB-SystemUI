.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;
    }
.end annotation


# static fields
.field public static final StockClickActions:[Ljava/lang/String;

.field public static final StockLongpress:[Ljava/lang/String;


# instance fields
.field private currentSetting:I

.field private currentVisibility:I

.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackLandIcon:Landroid/graphics/drawable/Drawable;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mBarSize:I

.field public mClickActions:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mCurrentView:Landroid/view/View;

.field private mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field mHidden:Z

.field mLightsOutListener:Landroid/view/View$OnTouchListener;

.field public mLongpressActions:[Ljava/lang/String;

.field mLowProfile:Z

.field mNavigationIconHints:I

.field mNumberOfButtons:I

.field public mPortraitIcons:[Ljava/lang/String;

.field mRotatedViews:[Landroid/view/View;

.field mShowMenu:Z

.field mTablet_UI:I

.field mVertical:Z

.field rot0:Landroid/widget/FrameLayout;

.field rot90:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 127
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "**back**"

    aput-object v1, v0, v2

    const-string v1, "**home**"

    aput-object v1, v0, v3

    const-string v1, "**recents**"

    aput-object v1, v0, v4

    const-string v1, "**null**"

    aput-object v1, v0, v5

    const-string v1, "**null**"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->StockClickActions:[Ljava/lang/String;

    .line 131
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "**null**"

    aput-object v1, v0, v2

    const-string v1, "**null**"

    aput-object v1, v0, v3

    const-string v1, "**null**"

    aput-object v1, v0, v4

    const-string v1, "**null**"

    aput-object v1, v0, v5

    const-string v1, "**null**"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->StockLongpress:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f020029

    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 223
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 85
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .line 91
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 92
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 114
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNumberOfButtons:I

    .line 120
    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTablet_UI:I

    .line 122
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mClickActions:[Ljava/lang/String;

    .line 123
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongpressActions:[Ljava/lang/String;

    .line 124
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPortraitIcons:[Ljava/lang/String;

    .line 200
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    .line 456
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    .line 224
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    .line 226
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHidden:Z

    .line 228
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    .line 230
    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 234
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarSize:I

    .line 235
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 236
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 237
    new-instance v1, Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DelegateViewHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    .line 239
    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    .line 240
    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    .line 241
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    .line 242
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    .line 244
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "systemui_navbar_color"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 252
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateColor()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addButton(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 1
    .parameter "root"
    .parameter "addMe"
    .parameter "landscape"

    .prologue
    .line 321
    if-eqz p3, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private addLightsOutButton(Landroid/widget/LinearLayout;Landroid/view/View;ZZ)V
    .locals 3
    .parameter "root"
    .parameter "v"
    .parameter "landscape"
    .parameter "empty"

    .prologue
    const/4 v2, 0x0

    .line 306
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 307
    .local v0, addMe:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    if-eqz p4, :cond_0

    const v1, 0x7f020034

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 311
    if-eqz p4, :cond_1

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    if-eqz p3, :cond_2

    .line 314
    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 318
    :goto_2
    return-void

    .line 308
    :cond_0
    const v1, 0x7f020035

    goto :goto_0

    :cond_1
    move v1, v2

    .line 311
    goto :goto_1

    .line 316
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method private generateKey(ZI)Landroid/view/View;
    .locals 9
    .parameter "landscape"
    .parameter "keyId"

    .prologue
    const v4, 0x7f02002c

    const/16 v8, 0x52

    const/4 v7, 0x4

    const/high16 v6, 0x4220

    const/4 v3, 0x0

    .line 328
    const/4 v2, 0x0

    .line 329
    .local v2, v:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 331
    .local v1, r:Landroid/content/res/Resources;
    const/16 v0, 0x50

    .line 333
    .local v0, btnWidth:I
    packed-switch p2, :pswitch_data_0

    .line 365
    :goto_0
    :pswitch_0
    return-object v3

    .line 336
    :pswitch_1
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .end local v2           #v:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 337
    .restart local v2       #v:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams(ZF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    const v3, 0x7f0c001b

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setId(I)V

    .line 340
    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setCode(I)V

    .line 341
    if-eqz p1, :cond_0

    const v3, 0x7f020039

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setImageResource(I)V

    .line 343
    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 344
    const v3, 0x7f09003f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 345
    if-eqz p1, :cond_1

    const v3, 0x7f02002d

    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setGlowBackground(I)V

    move-object v3, v2

    .line 347
    goto :goto_0

    .line 341
    :cond_0
    const v3, 0x7f020036

    goto :goto_1

    :cond_1
    move v3, v4

    .line 345
    goto :goto_2

    .line 350
    :pswitch_2
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .end local v2           #v:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 351
    .restart local v2       #v:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams(ZF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setId(I)V

    .line 354
    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setCode(I)V

    .line 355
    if-eqz p1, :cond_3

    const v3, 0x7f020039

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setImageResource(I)V

    .line 357
    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setVisibility(I)V

    .line 358
    const v3, 0x7f09003f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 359
    if-eqz p1, :cond_2

    const v4, 0x7f02002d

    :cond_2
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setGlowBackground(I)V

    move-object v3, v2

    .line 361
    goto :goto_0

    .line 355
    :cond_3
    const v3, 0x7f020036

    goto :goto_3

    .line 333
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private generateKey(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;
    .locals 11
    .parameter "landscape"
    .parameter "clickAction"
    .parameter "longpress"
    .parameter "iconUri"

    .prologue
    .line 372
    const/16 v5, 0x50

    .line 373
    .local v5, iconSize:I
    new-instance v6, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8, p2, p3}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .local v6, v:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;
    const-string v7, "key.ext"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generated ex key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/high16 v7, 0x42a0

    invoke-direct {p0, p1, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams(ZF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    const/4 v2, 0x0

    .line 380
    .local v2, drawableSet:Z
    if-eqz p4, :cond_1

    .line 381
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 383
    new-instance v4, Ljava/io/File;

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 384
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 385
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 386
    const/4 v2, 0x1

    .line 389
    .end local v4           #f:Ljava/io/File;
    :cond_0
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    const-string v7, "**"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 393
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p2, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 395
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAppIconPadding()[I

    move-result-object v0

    .line 396
    .local v0, appIconPadding:[I
    if-eqz p1, :cond_3

    .line 397
    const/4 v7, 0x1

    aget v7, v0, v7

    const/4 v8, 0x0

    aget v8, v0, v8

    const/4 v9, 0x3

    aget v9, v0, v9

    const/4 v10, 0x2

    aget v10, v0, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setPaddingRelative(IIII)V

    .line 402
    :goto_0
    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 403
    const/4 v2, 0x1

    .line 414
    .end local v0           #appIconPadding:[I
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getNavbarIconImage(ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    :cond_2
    if-eqz p1, :cond_4

    const v7, 0x7f02002d

    :goto_2
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setGlowBackground(I)V

    .line 420
    return-object v6

    .line 400
    .restart local v0       #appIconPadding:[I
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v7, 0x0

    :try_start_1
    aget v7, v0, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    const/4 v9, 0x2

    aget v9, v0, v9

    const/4 v10, 0x3

    aget v10, v0, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setPaddingRelative(IIII)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 404
    .end local v0           #appIconPadding:[I
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v3

    .line 405
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 406
    const/4 v2, 0x0

    .line 410
    goto :goto_1

    .line 407
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 408
    .local v3, e:Ljava/net/URISyntaxException;
    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 409
    const/4 v2, 0x0

    goto :goto_1

    .line 418
    .end local v3           #e:Ljava/net/URISyntaxException;
    :cond_4
    const v7, 0x7f02002c

    goto :goto_2
.end method

.method private getAppIconPadding()[I
    .locals 5

    .prologue
    const/high16 v3, 0x4000

    const/4 v4, 0x1

    .line 424
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 426
    .local v0, padding:[I
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 429
    const/high16 v1, 0x4080

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    .line 432
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 435
    const/4 v1, 0x3

    const/high16 v2, 0x40a0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 438
    return-object v0
.end method

.method private getLayoutParams(ZF)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5
    .parameter "landscape"
    .parameter "dp"

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f80

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, p2, v1

    .line 444
    .local v0, px:F
    if-eqz p1, :cond_0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v2, v0

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v2, v0

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    goto :goto_0
.end method

.method private getNavbarIconImage(ZLjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    const v1, 0x7f02003b

    .line 881
    if-nez p2, :cond_0

    .line 882
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 904
    :goto_0
    return-object v0

    .line 884
    :cond_0
    const-string v0, "**"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 885
    const-string v0, "**home**"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 887
    :cond_1
    const-string v0, "**back**"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 888
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 889
    :cond_2
    const-string v0, "**recents**"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 890
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 891
    :cond_3
    const-string v0, "**search**"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 892
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 893
    :cond_4
    const-string v0, "**menu**"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 894
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 895
    :cond_5
    const-string v0, "**kill**"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 896
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 897
    :cond_6
    const-string v0, "**power**"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 898
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 899
    :cond_7
    const-string v0, "**notifications**"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 900
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 904
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getSeparatorLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4
    .parameter "landscape"

    .prologue
    const/4 v3, -0x1

    .line 450
    const/high16 v1, 0x41c8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v1, v2

    .line 451
    .local v0, px:F
    if-eqz p1, :cond_0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v2, v0

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v2, v0

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private makeBar()V
    .locals 12

    .prologue
    .line 256
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->rot0:Landroid/widget/FrameLayout;

    const v10, 0x7f0c0016

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 257
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->rot0:Landroid/widget/FrameLayout;

    const v10, 0x7f0c001c

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 258
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->rot90:Landroid/widget/FrameLayout;

    const v10, 0x7f0c0016

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 259
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->rot90:Landroid/widget/FrameLayout;

    const v10, 0x7f0c001c

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v9, 0x1

    if-gt v0, v9, :cond_8

    .line 262
    const/4 v9, 0x1

    if-ne v0, v9, :cond_2

    const/4 v2, 0x1

    .line 264
    .local v2, landscape:Z
    :goto_1
    if-eqz v2, :cond_3

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->rot90:Landroid/widget/FrameLayout;

    const v10, 0x7f0c0016

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    :goto_2
    check-cast v5, Landroid/widget/LinearLayout;

    .line 268
    .local v5, navButtonLayout:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_4

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->rot90:Landroid/widget/FrameLayout;

    const v10, 0x7f0c001c

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    :goto_3
    check-cast v4, Landroid/widget/LinearLayout;

    .line 273
    .local v4, lightsOut:Landroid/widget/LinearLayout;
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->currentSetting:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    .line 274
    const/4 v9, 0x5

    invoke-direct {p0, v2, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->generateKey(ZI)Landroid/view/View;

    move-result-object v3

    .line 275
    .local v3, leftmenuKey:Landroid/view/View;
    invoke-direct {p0, v5, v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addButton(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 276
    const/4 v9, 0x1

    invoke-direct {p0, v4, v3, v2, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addLightsOutButton(Landroid/widget/LinearLayout;Landroid/view/View;ZZ)V

    .line 278
    .end local v3           #leftmenuKey:Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_4
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNumberOfButtons:I

    if-ge v1, v9, :cond_6

    .line 279
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mClickActions:[Ljava/lang/String;

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongpressActions:[Ljava/lang/String;

    aget-object v10, v10, v1

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPortraitIcons:[Ljava/lang/String;

    aget-object v11, v11, v1

    invoke-direct {p0, v2, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->generateKey(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    move-result-object v8

    .line 282
    .local v8, v:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_5

    const-string v9, "key_land_"

    :goto_5
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setTag(Ljava/lang/Object;)V

    .line 284
    invoke-direct {p0, v5, v8, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addButton(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 285
    const/4 v9, 0x0

    invoke-direct {p0, v4, v8, v2, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addLightsOutButton(Landroid/widget/LinearLayout;Landroid/view/View;ZZ)V

    .line 287
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNumberOfButtons:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNumberOfButtons:I

    add-int/lit8 v9, v9, -0x1

    if-eq v1, v9, :cond_1

    .line 289
    new-instance v7, Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 290
    .local v7, separator:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSeparatorLayoutParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    invoke-direct {p0, v5, v7, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addButton(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 292
    const/4 v9, 0x1

    invoke-direct {p0, v4, v7, v2, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addLightsOutButton(Landroid/widget/LinearLayout;Landroid/view/View;ZZ)V

    .line 278
    .end local v7           #separator:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 262
    .end local v1           #j:I
    .end local v2           #landscape:Z
    .end local v4           #lightsOut:Landroid/widget/LinearLayout;
    .end local v5           #navButtonLayout:Landroid/widget/LinearLayout;
    .end local v8           #v:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 264
    .restart local v2       #landscape:Z
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->rot0:Landroid/widget/FrameLayout;

    const v10, 0x7f0c0016

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_2

    .line 268
    .restart local v5       #navButtonLayout:Landroid/widget/LinearLayout;
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->rot0:Landroid/widget/FrameLayout;

    const v10, 0x7f0c001c

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_3

    .line 282
    .restart local v1       #j:I
    .restart local v4       #lightsOut:Landroid/widget/LinearLayout;
    .restart local v8       #v:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;
    :cond_5
    const-string v9, "key_"

    goto :goto_5

    .line 296
    .end local v8           #v:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;
    :cond_6
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->currentSetting:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_7

    .line 297
    const/4 v9, 0x2

    invoke-direct {p0, v2, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->generateKey(ZI)Landroid/view/View;

    move-result-object v6

    .line 298
    .local v6, rightMenuKey:Landroid/view/View;
    invoke-direct {p0, v5, v6, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addButton(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 299
    const/4 v9, 0x1

    invoke-direct {p0, v4, v6, v2, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addLightsOutButton(Landroid/widget/LinearLayout;Landroid/view/View;ZZ)V

    .line 261
    .end local v6           #rightMenuKey:Landroid/view/View;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 302
    .end local v1           #j:I
    .end local v2           #landscape:Z
    .end local v4           #lightsOut:Landroid/widget/LinearLayout;
    .end local v5           #navButtonLayout:Landroid/widget/LinearLayout;
    :cond_8
    return-void
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3
    .parameter "how"

    .prologue
    const/4 v2, 0x0

    .line 921
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 922
    return-void
.end method

.method private updateColor()V
    .locals 3

    .prologue
    const/high16 v0, -0x100

    .line 936
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "systemui_navbar_color"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 939
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 942
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 943
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBackgroundColor(I)V

    .line 944
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getBackButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHomeButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLeftMenuButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRecentsButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getRightMenuButton()Landroid/view/View;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 12

    .prologue
    const v9, 0x7f0c0015

    const v11, 0x7f0c001e

    const/4 v10, 0x0

    .line 694
    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->rot0:Landroid/widget/FrameLayout;

    .line 695
    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->rot90:Landroid/widget/FrameLayout;

    .line 697
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v8, 0x2

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    aput-object v9, v6, v10

    .line 700
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    .line 702
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v7, 0x3

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    aput-object v8, v6, v7

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 708
    .local v5, v:Landroid/view/View;
    const v6, 0x7f0c0016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 709
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 706
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v5           #v:Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v6, v6, v10

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 712
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateColor()V

    .line 715
    new-instance v4, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/os/Handler;)V

    .line 716
    .local v4, settingsObserver:Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView$SettingsObserver;->observe()V

    .line 717
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 749
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setInitialTouchRegion([Landroid/view/View;)V

    .line 751
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 758
    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 759
    .local v0, newVertical:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    .line 760
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    .line 762
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 765
    :cond_0
    const-string v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    .line 766
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 767
    return-void

    .line 758
    .end local v0           #newVertical:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 192
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public reorient()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 720
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 721
    .local v1, rot:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 722
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTablet_UI:I

    if-eqz v2, :cond_1

    .line 725
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v5

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 729
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 732
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    invoke-virtual {p0, v2, v5, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(ZZZ)V

    .line 733
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 734
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 744
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 745
    return-void

    .line 727
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    goto :goto_1
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 1
    .parameter "phoneStatusBar"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 185
    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDelegateHelper:Lcom/android/systemui/statusbar/DelegateViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setDelegateView(Landroid/view/View;)V

    .line 181
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1
    .parameter "disabledFlags"

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 509
    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 10
    .parameter "disabledFlags"
    .parameter "force"

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 512
    if-nez p2, :cond_1

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v9, p1, :cond_1

    .line 536
    :cond_0
    return-void

    .line 514
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    .line 516
    const/high16 v9, 0x20

    and-int/2addr v9, p1

    if-eqz v9, :cond_3

    move v1, v6

    .line 517
    .local v1, disableHome:Z
    :goto_0
    const/high16 v9, 0x100

    and-int/2addr v9, p1

    if-eqz v9, :cond_4

    move v2, v6

    .line 518
    .local v2, disableRecent:Z
    :goto_1
    const/high16 v9, 0x40

    and-int/2addr v9, p1

    if-eqz v9, :cond_5

    move v0, v6

    .line 520
    .local v0, disableBack:Z
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 522
    const/4 v3, 0x0

    .local v3, j:I
    :goto_4
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNumberOfButtons:I

    if-ge v3, v6, :cond_0

    .line 523
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v6, :cond_7

    const-string v6, "key_land_"

    :goto_5
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 524
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 525
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 526
    .local v5, vid:I
    const v6, 0x7f0c0018

    if-ne v5, v6, :cond_9

    .line 527
    if-eqz v0, :cond_8

    move v6, v8

    :goto_6
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 522
    .end local v5           #vid:I
    :cond_2
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v0           #disableBack:Z
    .end local v1           #disableHome:Z
    .end local v2           #disableRecent:Z
    .end local v3           #j:I
    .end local v4           #v:Landroid/view/View;
    :cond_3
    move v1, v7

    .line 516
    goto :goto_0

    .restart local v1       #disableHome:Z
    :cond_4
    move v2, v7

    .line 517
    goto :goto_1

    .restart local v2       #disableRecent:Z
    :cond_5
    move v0, v7

    .line 518
    goto :goto_2

    .restart local v0       #disableBack:Z
    :cond_6
    move v6, v7

    .line 520
    goto :goto_3

    .line 523
    .restart local v3       #j:I
    :cond_7
    const-string v6, "key_"

    goto :goto_5

    .restart local v4       #v:Landroid/view/View;
    .restart local v5       #vid:I
    :cond_8
    move v6, v7

    .line 527
    goto :goto_6

    .line 528
    :cond_9
    const v6, 0x7f0c001a

    if-ne v5, v6, :cond_b

    .line 529
    if-eqz v2, :cond_a

    move v6, v8

    :goto_8
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_a
    move v6, v7

    goto :goto_8

    .line 531
    :cond_b
    if-eqz v1, :cond_c

    move v6, v8

    :goto_9
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_c
    move v6, v7

    goto :goto_9
.end method

.method public setLowProfile(Z)V
    .locals 2
    .parameter "lightsOut"

    .prologue
    .line 634
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(ZZZ)V

    .line 635
    return-void
.end method

.method public setLowProfile(ZZZ)V
    .locals 11
    .parameter "lightsOut"
    .parameter "animate"
    .parameter "force"

    .prologue
    const-wide/16 v9, 0xfa

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 638
    if-nez p3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    if-ne p1, v2, :cond_0

    .line 679
    :goto_0
    return-void

    .line 640
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLowProfile:Z

    .line 644
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v7, 0x7f0c0016

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 645
    .local v1, navButtons:Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v7, 0x7f0c001c

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 648
    .local v0, lowLights:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 649
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 651
    if-nez p2, :cond_4

    .line 652
    if-eqz p1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 654
    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 655
    if-eqz p1, :cond_3

    move v2, v5

    :goto_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 652
    goto :goto_1

    :cond_2
    move v4, v3

    .line 654
    goto :goto_2

    :cond_3
    move v2, v6

    .line 655
    goto :goto_3

    .line 657
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-eqz p1, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {v7, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_8

    const-wide/16 v7, 0x2ee

    :goto_5
    invoke-virtual {v2, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 662
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 663
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 664
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 665
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 667
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_9

    :goto_6
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_6

    const-wide/16 v9, 0x2ee

    :cond_6
    invoke-virtual {v2, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v4, 0x4000

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p1, :cond_a

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    :cond_7
    move v2, v4

    .line 657
    goto :goto_4

    :cond_8
    move-wide v7, v9

    goto :goto_5

    :cond_9
    move v4, v3

    .line 667
    goto :goto_6

    :cond_a
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/view/View;)V

    goto :goto_7
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    .line 555
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 9
    .parameter "show"
    .parameter "force"

    .prologue
    const v8, 0x7f020038

    const/4 v6, 0x0

    const v4, 0x7f020039

    const v5, 0x7f020036

    const/4 v7, 0x4

    .line 559
    if-nez p2, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v3, p1, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->currentSetting:I

    if-eq v3, v7, :cond_0

    .line 566
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    .line 567
    move v1, p1

    .line 569
    .local v1, localShow:Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLeftMenuButton()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 570
    .local v0, leftButton:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRightMenuButton()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 572
    .local v2, rightButton:Landroid/widget/ImageView;
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->currentVisibility:I

    packed-switch v3, :pswitch_data_0

    .line 616
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->currentSetting:I

    packed-switch v3, :pswitch_data_1

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLeftMenuButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 628
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRightMenuButton()Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_c

    :goto_2
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 574
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 577
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_3

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    move v3, v5

    .line 574
    goto :goto_3

    :cond_3
    move v4, v5

    .line 577
    goto :goto_4

    .line 582
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_5

    :goto_6
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 588
    const/4 v1, 0x1

    .line 589
    goto :goto_1

    :cond_4
    move v3, v5

    .line 582
    goto :goto_5

    :cond_5
    move v4, v5

    .line 585
    goto :goto_6

    .line 591
    :pswitch_2
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 593
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 595
    const/4 v1, 0x1

    .line 596
    goto :goto_1

    .line 598
    :pswitch_3
    if-eqz v1, :cond_8

    .line 599
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 602
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRightMenuButton()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v8, :cond_7

    :goto_8
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_6
    move v3, v5

    .line 599
    goto :goto_7

    :cond_7
    move v4, v5

    .line 602
    goto :goto_8

    .line 606
    :cond_8
    const/4 v1, 0x1

    .line 607
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 609
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 618
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLeftMenuButton()Landroid/view/View;

    move-result-object v4

    if-eqz v1, :cond_9

    move v3, v6

    :goto_9
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 619
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRightMenuButton()Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_a

    :goto_a
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    move v3, v7

    .line 618
    goto :goto_9

    :cond_a
    move v6, v7

    .line 619
    goto :goto_a

    .line 622
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLeftMenuButton()Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_b

    :goto_b
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 623
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRightMenuButton()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    move v6, v7

    .line 622
    goto :goto_b

    :cond_c
    move v6, v7

    .line 628
    goto/16 :goto_2

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 616
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public setNavigationIconHints(I)V
    .locals 1
    .parameter "hints"

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    .line 476
    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 4
    .parameter "hints"
    .parameter "force"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v1, 0x3f00

    .line 479
    if-nez p2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 490
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 492
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 498
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v3

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 501
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_9

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 490
    goto :goto_1

    .line 492
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_8
    move v0, v2

    .line 498
    goto :goto_3

    :cond_9
    move v1, v2

    .line 502
    goto :goto_4
.end method

.method public setSlippery(Z)V
    .locals 4
    .parameter "newSlippery"

    .prologue
    const/high16 v3, 0x400

    .line 539
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 540
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    .line 541
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 542
    .local v1, oldSlippery:Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 543
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 549
    :goto_1
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    .end local v1           #oldSlippery:Z
    :cond_0
    return-void

    .line 541
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 544
    .restart local v1       #oldSlippery:Z
    :cond_2
    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 545
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x4000001

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method

.method protected updateSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 834
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 836
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "menu_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->currentSetting:I

    .line 839
    const-string v2, "menu_visibility"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->currentVisibility:I

    .line 841
    const-string v2, "tablet_ui"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTablet_UI:I

    .line 843
    const-string v2, "navigation_bar_buttons_qty"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNumberOfButtons:I

    .line 845
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNumberOfButtons:I

    if-nez v2, :cond_0

    .line 846
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNumberOfButtons:I

    .line 847
    const-string v2, "navigation_bar_buttons_qty"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 851
    :cond_0
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_4

    .line 852
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mClickActions:[Ljava/lang/String;

    sget-object v3, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_ACTIVITIES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 854
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mClickActions:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 855
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mClickActions:[Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/phone/NavigationBarView;->StockClickActions:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 856
    sget-object v2, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_ACTIVITIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mClickActions:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 860
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongpressActions:[Ljava/lang/String;

    sget-object v3, Landroid/provider/Settings$System;->NAVIGATION_LONGPRESS_ACTIVITIES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 862
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongpressActions:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 863
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongpressActions:[Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/phone/NavigationBarView;->StockLongpress:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 864
    sget-object v2, Landroid/provider/Settings$System;->NAVIGATION_LONGPRESS_ACTIVITIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongpressActions:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 867
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPortraitIcons:[Ljava/lang/String;

    sget-object v3, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_APP_ICONS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 869
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPortraitIcons:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 870
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mPortraitIcons:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 871
    sget-object v2, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_APP_ICONS:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 851
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 875
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->makeBar()V

    .line 877
    return-void
.end method

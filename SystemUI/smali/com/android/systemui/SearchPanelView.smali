.class public Lcom/android/systemui/SearchPanelView;
.super Landroid/widget/FrameLayout;
.source "SearchPanelView.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SearchPanelView$TargetObserver;,
        Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;
    }
.end annotation


# instance fields
.field private H:Landroid/os/Handler;

.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field final mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mResources:Landroid/content/res/Resources;

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field private mSearchTargetsContainer:Landroid/view/View;

.field private mShowing:Z

.field private mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

.field private mTargetObserver:Lcom/android/systemui/SearchPanelView$TargetObserver;

.field private targetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 245
    new-instance v1, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    .line 379
    new-instance v1, Lcom/android/systemui/SearchPanelView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/SearchPanelView$2;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 538
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/SearchPanelView;->mScreenshotLock:Ljava/lang/Object;

    .line 539
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/SearchPanelView;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 541
    new-instance v1, Lcom/android/systemui/SearchPanelView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/SearchPanelView$3;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/SearchPanelView;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 648
    new-instance v1, Lcom/android/systemui/SearchPanelView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/SearchPanelView$7;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/SearchPanelView;->H:Landroid/os/Handler;

    .line 111
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    .line 112
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SearchPanelView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 113
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    .line 115
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SearchPanelView;->mContentResolver:Landroid/content/ContentResolver;

    .line 116
    new-instance v1, Lcom/android/systemui/SearchPanelView$TargetObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/SearchPanelView$TargetObserver;-><init>(Lcom/android/systemui/SearchPanelView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/SearchPanelView;->mTargetObserver:Lcom/android/systemui/SearchPanelView$TargetObserver;

    .line 118
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "systemui_navring_1"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "systemui_navring_2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "systemui_navring_3"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SearchPanelView;->targetList:Ljava/util/List;

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->targetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->targetList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mTargetObserver:Lcom/android/systemui/SearchPanelView$TargetObserver;

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/SearchPanelView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/SearchPanelView;->launchTarget(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->startAssistActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/SearchPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/SearchPanelView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->setDrawables()V

    return-void
.end method

.method private createLayoutTransitioner()Landroid/animation/LayoutTransition;
    .locals 4

    .prologue
    .line 477
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 478
    .local v0, transitioner:Landroid/animation/LayoutTransition;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 479
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 480
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 481
    return-object v0
.end method

.method private killProcess()V
    .locals 17

    .prologue
    .line 495
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v8, intent:Landroid/content/Intent;
    const-string v5, "com.android.launcher"

    .line 497
    .local v5, defaultHomePackage:Ljava/lang/String;
    const-string v14, "android.intent.category.HOME"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v8, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 499
    .local v11, res:Landroid/content/pm/ResolveInfo;
    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v14, :cond_0

    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v15, "android"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 500
    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 502
    :cond_0
    const/4 v12, 0x0

    .line 503
    .local v12, targetKilled:Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 504
    .local v1, am:Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 505
    .local v3, apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 506
    .local v2, appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v13, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 509
    .local v13, uid:I
    const/16 v14, 0x2710

    if-lt v13, v14, :cond_2

    const/16 v14, 0x4e1f

    if-gt v13, v14, :cond_2

    iget v14, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v15, 0x64

    if-ne v14, v15, :cond_2

    .line 511
    iget-object v14, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v14, :cond_5

    iget-object v14, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v14, v14

    if-lez v14, :cond_5

    .line 512
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v10, v4, v7

    .line 513
    .local v10, pkg:Ljava/lang/String;
    const-string v14, "com.android.systemui"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 514
    invoke-interface {v1, v10}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 515
    const/4 v12, 0x1

    .line 524
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v10           #pkg:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v12, :cond_1

    .line 525
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const v15, 0x7f090089

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 532
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v2           #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5           #defaultHomePackage:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v11           #res:Landroid/content/pm/ResolveInfo;
    .end local v12           #targetKilled:Z
    .end local v13           #uid:I
    :cond_3
    :goto_2
    return-void

    .line 512
    .restart local v1       #am:Landroid/app/IActivityManager;
    .restart local v2       #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v3       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v5       #defaultHomePackage:Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #len$:I
    .restart local v10       #pkg:Ljava/lang/String;
    .restart local v11       #res:Landroid/content/pm/ResolveInfo;
    .restart local v12       #targetKilled:Z
    .restart local v13       #uid:I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 520
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v10           #pkg:Ljava/lang/String;
    :cond_5
    iget v14, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v14}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    const/4 v12, 0x1

    goto :goto_1

    .line 529
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v2           #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5           #defaultHomePackage:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v11           #res:Landroid/content/pm/ResolveInfo;
    .end local v12           #targetKilled:Z
    .end local v13           #uid:I
    :catch_0
    move-exception v14

    goto :goto_2
.end method

.method private launchTarget(I)Z
    .locals 14
    .parameter "target"

    .prologue
    const/4 v13, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->screenLayout()I

    move-result v8

    const/4 v11, 0x3

    if-eq v8, v11, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->screenLayout()I

    move-result v8

    if-ne v8, v13, :cond_2

    .line 149
    :cond_0
    const/4 v6, -0x1

    .line 158
    .local v6, targetListOffset:I
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/SearchPanelView;->targetList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gt p1, v8, :cond_4

    .line 159
    iget-object v8, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v8, p0, Lcom/android/systemui/SearchPanelView;->targetList:Ljava/util/List;

    add-int v12, p1, v6

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v11, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, targetKey:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_1
    move v8, v10

    .line 210
    .end local v5           #targetKey:Ljava/lang/String;
    :goto_1
    return v8

    .line 151
    .end local v6           #targetListOffset:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->isScreenPortrait()Z

    move-result v8

    if-ne v8, v9, :cond_3

    .line 152
    const/4 v6, -0x1

    .restart local v6       #targetListOffset:I
    goto :goto_0

    .line 154
    .end local v6           #targetListOffset:I
    :cond_3
    const/4 v6, -0x3

    .restart local v6       #targetListOffset:I
    goto :goto_0

    :cond_4
    move v8, v10

    .line 161
    goto :goto_1

    .line 168
    .restart local v5       #targetKey:Ljava/lang/String;
    :cond_5
    const-string v8, "app:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 169
    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, activity:Ljava/lang/String;
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 173
    .local v2, component:Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 175
    .local v1, activityManager:Landroid/app/ActivityManager;
    const/16 v8, 0x14

    const/4 v10, 0x2

    invoke-virtual {v1, v8, v10}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 177
    .local v7, task:Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v7, :cond_6

    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_6

    iget-object v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 179
    iget v8, v7, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    invoke-virtual {v1, v8, v9}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    move v8, v9

    .line 180
    goto :goto_1

    .line 184
    .end local v7           #task:Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    .line 185
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 188
    const v8, 0x10104000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    iget-object v8, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v8, v9

    .line 192
    goto :goto_1

    .line 193
    .end local v0           #activity:Ljava/lang/String;
    .end local v1           #activityManager:Landroid/app/ActivityManager;
    .end local v2           #component:Landroid/content/ComponentName;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_8
    const-string v8, "screenoff"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->screenOff()V

    move v8, v9

    .line 196
    goto :goto_1

    .line 197
    :cond_9
    const-string v8, "killcurrent"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->killProcess()V

    move v8, v9

    .line 200
    goto/16 :goto_1

    .line 201
    :cond_a
    const-string v8, "screenshot"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->takeScreenshot()V

    move v8, v9

    .line 204
    goto/16 :goto_1

    .line 205
    :cond_b
    const-string v8, "power"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->powerMenu()V

    move v8, v9

    .line 208
    goto/16 :goto_1

    :cond_c
    move v8, v10

    .line 210
    goto/16 :goto_1
.end method

.method private maybeSwapSearchIcon()V
    .locals 5

    .prologue
    .line 349
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 350
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 352
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v3, "com.android.systemui.action_assist_icon"

    const v4, 0x1080294

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    .line 361
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 362
    .local v1, l:I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 363
    .local v2, r:I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 364
    .local v3, t:I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 365
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private powerMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 620
    new-array v1, v8, [Ljava/lang/CharSequence;

    const-string v3, "Shutdown"

    aput-object v3, v1, v4

    const-string v3, "Reboot"

    aput-object v3, v1, v5

    const-string v3, "Recovery"

    aput-object v3, v1, v6

    const-string v3, "Bootloader"

    aput-object v3, v1, v7

    .line 621
    .local v1, item_entries:[Ljava/lang/CharSequence;
    new-array v2, v8, [Ljava/lang/CharSequence;

    const-string v3, "shutdown"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    const-string v3, "recovery"

    aput-object v3, v2, v6

    const-string v3, "bootloader"

    aput-object v3, v2, v7

    .line 622
    .local v2, item_values:[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 623
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "Power Menu"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 624
    new-instance v3, Lcom/android/systemui/SearchPanelView$5;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/SearchPanelView$5;-><init>(Lcom/android/systemui/SearchPanelView;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 637
    const-string v3, "Cancel"

    new-instance v4, Lcom/android/systemui/SearchPanelView$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/SearchPanelView$6;-><init>(Lcom/android/systemui/SearchPanelView;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 645
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 646
    return-void
.end method

.method private screenOff()V
    .locals 5

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 490
    .local v0, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 491
    return-void
.end method

.method private setDrawables()V
    .locals 14

    .prologue
    .line 271
    iget-object v9, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "systemui_navring_2"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, target2:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 273
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "systemui_navring_2"

    const-string v11, "assist"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v6, storedDraw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->screenLayout()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 283
    const/4 v5, 0x1

    .line 284
    .local v5, startPosOffset:I
    const/16 v3, 0x8

    .line 298
    .local v3, endPosOffset:I
    :goto_0
    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v9, p0, Lcom/android/systemui/SearchPanelView;->targetList:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v12, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v11

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v9, p0, Lcom/android/systemui/SearchPanelView;->targetList:Ljava/util/List;

    const/4 v13, 0x1

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v12, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v11

    const/4 v11, 0x2

    iget-object v9, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v9, p0, Lcom/android/systemui/SearchPanelView;->targetList:Ljava/util/List;

    const/4 v13, 0x2

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v12, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 306
    .local v8, targetActivities:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget-object v9, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    const v11, 0x10802ea

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    .line 307
    .local v2, cDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 310
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_5

    .line 311
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 285
    .end local v2           #cDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .end local v3           #endPosOffset:I
    .end local v4           #i:I
    .end local v5           #startPosOffset:I
    .end local v8           #targetActivities:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->screenLayout()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    .line 286
    const/4 v5, 0x1

    .line 287
    .restart local v5       #startPosOffset:I
    const/4 v3, 0x4

    .restart local v3       #endPosOffset:I
    goto :goto_0

    .line 289
    .end local v3           #endPosOffset:I
    .end local v5           #startPosOffset:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->isScreenPortrait()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 290
    const/4 v5, 0x1

    .line 291
    .restart local v5       #startPosOffset:I
    const/4 v3, 0x4

    .restart local v3       #endPosOffset:I
    goto :goto_0

    .line 293
    .end local v3           #endPosOffset:I
    .end local v5           #startPosOffset:I
    :cond_4
    const/4 v5, 0x3

    .line 294
    .restart local v5       #startPosOffset:I
    const/4 v3, 0x2

    .restart local v3       #endPosOffset:I
    goto :goto_0

    .line 315
    .restart local v2       #cDrawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    .restart local v4       #i:I
    .restart local v8       #targetActivities:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_e

    .line 316
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "none"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 317
    :cond_6
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 318
    :cond_8
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "screenshot"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 319
    new-instance v9, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    iget-object v11, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f020018

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 320
    :cond_9
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "killcurrent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 321
    new-instance v9, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    iget-object v11, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f020016

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 322
    :cond_a
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "power"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 323
    new-instance v9, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    iget-object v11, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f020017

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 324
    :cond_b
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "screenoff"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 325
    new-instance v9, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    iget-object v11, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f020017

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 326
    :cond_c
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "assist"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 327
    new-instance v9, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    const v11, 0x1080294

    invoke-direct {v9, v10, v11}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 328
    :cond_d
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "app:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 330
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v11, 0x4

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 333
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v9, p0, Lcom/android/systemui/SearchPanelView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v9}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 335
    .local v0, activityIcon:Landroid/graphics/drawable/Drawable;
    new-instance v9, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    iget-object v10, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    invoke-direct {v9, v10, v0}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 336
    .end local v0           #activityIcon:Landroid/graphics/drawable/Drawable;
    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v9

    goto/16 :goto_3

    .line 341
    :cond_e
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_f

    .line 342
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 345
    :cond_f
    iget-object v9, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v9, v6}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(Ljava/util/ArrayList;)V

    .line 346
    return-void
.end method

.method private startAssistActivity()V
    .locals 7

    .prologue
    .line 127
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapse(I)V

    .line 129
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 130
    .local v1, intent:Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const v4, 0x7f04000e

    const v5, 0x7f04000f

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-static {v3, v4, v5, v6, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 135
    .local v2, opts:Landroid/app/ActivityOptions;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v2           #opts:Landroid/app/ActivityOptions;
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "SearchPanelView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->onAnimationStarted()V

    goto :goto_0
.end method

.method private takeScreenshot()V
    .locals 8

    .prologue
    .line 554
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 555
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_0

    .line 556
    monitor-exit v4

    .line 617
    :goto_0
    return-void

    .line 558
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v5, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 561
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 562
    new-instance v1, Lcom/android/systemui/SearchPanelView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/SearchPanelView$4;-><init>(Lcom/android/systemui/SearchPanelView;)V

    .line 612
    .local v1, conn:Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 613
    iput-object v1, p0, Lcom/android/systemui/SearchPanelView;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 614
    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->H:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/SearchPanelView;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 616
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #conn:Landroid/content/ServiceConnection;
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private vibrate()V
    .locals 5

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 389
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 392
    .local v1, vibrator:Landroid/os/Vibrator;
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 394
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 446
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 447
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 448
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 450
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isAssistantAvailable()Z
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 369
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/SearchPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/SearchPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 663
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    return v0
.end method

.method public onAnimationStarted()V
    .locals 3

    .prologue
    .line 249
    new-instance v0, Lcom/android/systemui/SearchPanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$1;-><init>(Lcom/android/systemui/SearchPanelView;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    const v0, 0x7f0c0060

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    .line 262
    const v0, 0x7f0c0097

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/StatusBarTouchProxy;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    .line 264
    const v0, 0x7f0c0062

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 265
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->setDrawables()V

    .line 268
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 436
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 438
    return-void
.end method

.method public screenLayout()I
    .locals 2

    .prologue
    .line 657
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 659
    .local v0, screenSize:I
    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 463
    return-void
.end method

.method public setStatusBarView(Landroid/view/View;)V
    .locals 1
    .parameter "statusBarView"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/StatusBarTouchProxy;->setStatusBar(Landroid/view/View;)V

    .line 474
    :cond_0
    return-void
.end method

.method public show(ZZ)V
    .locals 4
    .parameter "show"
    .parameter "animate"

    .prologue
    const/4 v3, 0x1

    .line 397
    if-nez p1, :cond_0

    .line 398
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->createLayoutTransitioner()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 399
    .local v0, transitioner:Landroid/animation/LayoutTransition;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 401
    .end local v0           #transitioner:Landroid/animation/LayoutTransition;
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    .line 402
    if-eqz p1, :cond_3

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->maybeSwapSearchIcon()V

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 408
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->suspendAnimations()V

    .line 409
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 410
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 411
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    .line 413
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/SearchPanelView;->setFocusable(Z)V

    .line 414
    invoke-virtual {p0, v3}, Lcom/android/systemui/SearchPanelView;->setFocusableInTouchMode(Z)V

    .line 415
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->requestFocus()Z

    .line 419
    :goto_1
    return-void

    .line 398
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 417
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    goto :goto_1
.end method

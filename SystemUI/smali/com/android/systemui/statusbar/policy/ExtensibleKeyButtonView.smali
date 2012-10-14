.class public Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;
.super Lcom/android/systemui/statusbar/policy/KeyButtonView;
.source "ExtensibleKeyButtonView.java"


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public mClickAction:Ljava/lang/String;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field public mHandler:Landroid/os/Handler;

.field public mInjectKeycode:I

.field mKillTask:Ljava/lang/Runnable;

.field private mLongPressListener:Landroid/view/View$OnLongClickListener;

.field public mLongpress:Ljava/lang/String;

.field final onInjectKey_Down:Ljava/lang/Runnable;

.field final onInjectKey_Up:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    const-string v0, "**null**"

    const-string v1, "**null**"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "ClickAction"
    .parameter "Longpress"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->onInjectKey_Down:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$2;-><init>(Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->onInjectKey_Up:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$3;-><init>(Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mKillTask:Ljava/lang/Runnable;

    .line 178
    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;-><init>(Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 231
    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;-><init>(Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mHandler:Landroid/os/Handler;

    .line 70
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mActivityManager:Landroid/app/ActivityManager;

    .line 71
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mClickAction:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setCode(I)V

    .line 76
    if-eqz p3, :cond_0

    .line 77
    const-string v0, "**home**"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setCode(I)V

    .line 79
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setId(I)V

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setSupportsLongPress(Z)V

    .line 96
    if-eqz p4, :cond_2

    .line 97
    const-string v0, "**null**"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->getCode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setSupportsLongPress(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 103
    :cond_2
    return-void

    .line 80
    :cond_3
    const-string v0, "**back**"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setCode(I)V

    .line 82
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setId(I)V

    goto :goto_0

    .line 83
    :cond_4
    const-string v0, "**search**"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setCode(I)V

    goto :goto_0

    .line 85
    :cond_5
    const-string v0, "**menu**"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    const/16 v0, 0x52

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setCode(I)V

    goto :goto_0

    .line 87
    :cond_6
    const-string v0, "**power**"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 88
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setCode(I)V

    goto :goto_0

    .line 90
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const-string v0, "**recents**"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->setId(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public injectKeyDelayed(I)V
    .locals 4
    .parameter "keycode"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mInjectKeycode:I

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->onInjectKey_Down:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->onInjectKey_Up:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->onInjectKey_Down:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->onInjectKey_Up:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void
.end method

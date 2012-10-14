.class Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$1;
.super Ljava/lang/Object;
.source "ExtensibleKeyButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 115
    new-instance v0, Landroid/view/KeyEvent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-wide v1, v1, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$1;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget v6, v6, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mInjectKeycode:I

    const/4 v9, -0x1

    const/16 v11, 0x48

    const/16 v12, 0x101

    move v7, v5

    move v8, v5

    move v10, v5

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 119
    .local v0, ev:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 121
    return-void
.end method

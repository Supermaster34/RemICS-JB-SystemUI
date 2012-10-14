.class Lcom/android/systemui/SearchPanelView$4$1;
.super Landroid/os/Handler;
.source "SearchPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelView$4;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/SearchPanelView$4;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView$4;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$4$1;->this$1:Lcom/android/systemui/SearchPanelView$4;

    iput-object p3, p0, Lcom/android/systemui/SearchPanelView$4$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$4$1;->this$1:Lcom/android/systemui/SearchPanelView$4;

    iget-object v0, v0, Lcom/android/systemui/SearchPanelView$4;->this$0:Lcom/android/systemui/SearchPanelView;

    iget-object v1, v0, Lcom/android/systemui/SearchPanelView;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$4$1;->this$1:Lcom/android/systemui/SearchPanelView$4;

    iget-object v0, v0, Lcom/android/systemui/SearchPanelView$4;->this$0:Lcom/android/systemui/SearchPanelView;

    iget-object v0, v0, Lcom/android/systemui/SearchPanelView;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView$4$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$4$1;->this$1:Lcom/android/systemui/SearchPanelView$4;

    iget-object v0, v0, Lcom/android/systemui/SearchPanelView$4;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$500(Lcom/android/systemui/SearchPanelView;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView$4$1;->this$1:Lcom/android/systemui/SearchPanelView$4;

    iget-object v2, v2, Lcom/android/systemui/SearchPanelView$4;->this$0:Lcom/android/systemui/SearchPanelView;

    iget-object v2, v2, Lcom/android/systemui/SearchPanelView;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 578
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$4$1;->this$1:Lcom/android/systemui/SearchPanelView$4;

    iget-object v0, v0, Lcom/android/systemui/SearchPanelView$4;->this$0:Lcom/android/systemui/SearchPanelView;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/SearchPanelView;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 579
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$4$1;->this$1:Lcom/android/systemui/SearchPanelView$4;

    iget-object v0, v0, Lcom/android/systemui/SearchPanelView$4;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->H:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$600(Lcom/android/systemui/SearchPanelView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView$4$1;->this$1:Lcom/android/systemui/SearchPanelView$4;

    iget-object v2, v2, Lcom/android/systemui/SearchPanelView$4;->this$0:Lcom/android/systemui/SearchPanelView;

    iget-object v2, v2, Lcom/android/systemui/SearchPanelView;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 581
    :cond_0
    monitor-exit v1

    .line 582
    return-void

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class Lcom/android/systemui/statusbar/tablet/TabletStatusBarView$1;
.super Landroid/database/ContentObserver;
.source "TabletStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    #calls: Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->updateColor()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->access$000(Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;)V

    .line 57
    return-void
.end method

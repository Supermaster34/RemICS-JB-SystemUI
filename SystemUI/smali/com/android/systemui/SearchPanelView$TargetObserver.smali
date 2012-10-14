.class public Lcom/android/systemui/SearchPanelView$TargetObserver;
.super Landroid/database/ContentObserver;
.source "SearchPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TargetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SearchPanelView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$TargetObserver;->this$0:Lcom/android/systemui/SearchPanelView;

    .line 668
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 669
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 673
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 678
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 679
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView$TargetObserver;->this$0:Lcom/android/systemui/SearchPanelView;

    #calls: Lcom/android/systemui/SearchPanelView;->setDrawables()V
    invoke-static {v0}, Lcom/android/systemui/SearchPanelView;->access$700(Lcom/android/systemui/SearchPanelView;)V

    .line 680
    return-void
.end method

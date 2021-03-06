.class public abstract Lcom/android/systemui/statusbar/powerwidget/StateTracker;
.super Ljava/lang/Object;
.source "StateTracker.java"


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mInTransition:Z

    .line 17
    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 19
    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    const/4 v0, 0x5

    :goto_0
    return v0

    .line 134
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 136
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mInTransition:Z

    .line 74
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 93
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 94
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 95
    const-string v1, "StateTracker"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    const-string v1, "StateTracker"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 106
    :cond_1
    return-void

    .line 76
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mInTransition:Z

    .line 77
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 80
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mInTransition:Z

    .line 81
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 84
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mInTransition:Z

    .line 85
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 88
    :pswitch_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mInTransition:Z

    .line 89
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 100
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mInTransition:Z

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 34
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 35
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 48
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 49
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mInTransition:Z

    if-eqz v3, :cond_2

    .line 54
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 59
    :goto_1
    return-void

    .line 37
    :pswitch_1
    const/4 v1, 0x0

    .line 38
    goto :goto_0

    .line 40
    :pswitch_2
    const/4 v1, 0x1

    .line 41
    goto :goto_0

    .line 43
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 44
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 56
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->mInTransition:Z

    .line 57
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/powerwidget/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

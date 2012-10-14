.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 2402
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .parameter "v"

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x1

    .line 2405
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 2406
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getHeight()I

    move-result v1

    .line 2407
    .local v1, height:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Landroid/view/animation/AnimationUtils;->makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2408
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2409
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2425
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2448
    :goto_0
    return v4

    .line 2427
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #height:I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getHeight()I

    move-result v1

    .line 2428
    .restart local v1       #height:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2429
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2430
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2446
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPowerWidget:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

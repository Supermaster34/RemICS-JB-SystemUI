.class Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;
.super Landroid/database/ContentObserver;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/powerwidget/PowerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    .line 437
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 438
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 441
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$400(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 444
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v3, "expanded_view_widget"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 449
    const-string v3, "expanded_hide_scrollbar"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 454
    const-string v3, "expanded_haptic_feedback"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 457
    const-string v3, "haptic_feedback_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 462
    const-string v3, "expanded_widget_buttons"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 467
    iget-object v3, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #calls: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->getAllObservedUris()Ljava/util/List;
    invoke-static {v3}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$500(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 468
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 470
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 480
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$400(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 481
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$400(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 484
    .local v2, res:Landroid/content/res/Resources;
    const-string v4, "expanded_widget_buttons"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 485
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->setupWidget()V

    .line 495
    :cond_0
    :goto_0
    const-string v4, "haptic_feedback_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "expanded_haptic_feedback"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 497
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #calls: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateHapticFeedbackSetting()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$700(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V

    .line 501
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mButtons:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$300(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/powerwidget/PowerButton;

    .line 502
    .local v0, button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->getObservedUris()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 503
    invoke-virtual {v0, v3, p2}, Lcom/android/systemui/statusbar/powerwidget/PowerButton;->onChangeUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1

    .line 487
    .end local v0           #button:Lcom/android/systemui/statusbar/powerwidget/PowerButton;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    const-string v4, "expanded_view_widget"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 488
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #calls: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateVisibility()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$600(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V

    goto :goto_0

    .line 490
    :cond_5
    const-string v4, "expanded_hide_scrollbar"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #calls: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->recreateButtonLayout()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$200(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)V

    goto :goto_0

    .line 508
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->updateAllButtons()V

    .line 509
    return-void
.end method

.method public unobserve()V
    .locals 2

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/systemui/statusbar/powerwidget/PowerWidget$WidgetSettingsObserver;->this$0:Lcom/android/systemui/statusbar/powerwidget/PowerWidget;

    #getter for: Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/powerwidget/PowerWidget;->access$400(Lcom/android/systemui/statusbar/powerwidget/PowerWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 475
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 476
    return-void
.end method

.class Lcom/android/systemui/statusbar/policy/KeyButtonView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "KeyButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    .line 341
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 342
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    #getter for: Lcom/android/systemui/statusbar/policy/KeyButtonView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$000(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 346
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "navigation_bar_button_alpha"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 349
    const-string v1, "navigation_bar_tint"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 353
    const-string v1, "navigation_bar_glow_tint"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 357
    sget-object v1, Landroid/provider/Settings$System;->NAVIGATION_BAR_GLOW_DURATION:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 361
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->updateSettings()V

    .line 362
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->updateSettings()V

    .line 367
    return-void
.end method

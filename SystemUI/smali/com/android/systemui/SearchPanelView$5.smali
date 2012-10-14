.class Lcom/android/systemui/SearchPanelView$5;
.super Ljava/lang/Object;
.source "SearchPanelView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelView;->powerMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelView;

.field final synthetic val$item_values:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelView;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    iput-object p2, p0, Lcom/android/systemui/SearchPanelView$5;->val$item_values:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 629
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$5;->this$0:Lcom/android/systemui/SearchPanelView;

    #getter for: Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/SearchPanelView;->access$500(Lcom/android/systemui/SearchPanelView;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 633
    .local v0, pm:Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView$5;->val$item_values:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 635
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_1
    return-void
.end method

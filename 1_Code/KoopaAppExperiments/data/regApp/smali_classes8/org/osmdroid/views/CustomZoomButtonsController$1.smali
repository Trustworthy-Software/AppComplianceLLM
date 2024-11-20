.class Lorg/osmdroid/views/CustomZoomButtonsController$1;
.super Ljava/lang/Object;
.source "CustomZoomButtonsController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/views/CustomZoomButtonsController;-><init>(Lorg/osmdroid/views/MapView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/CustomZoomButtonsController;


# direct methods
.method constructor <init>(Lorg/osmdroid/views/CustomZoomButtonsController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/views/CustomZoomButtonsController;

    .line 42
    iput-object p1, p0, Lorg/osmdroid/views/CustomZoomButtonsController$1;->this$0:Lorg/osmdroid/views/CustomZoomButtonsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 45
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController$1;->this$0:Lorg/osmdroid/views/CustomZoomButtonsController;

    invoke-static {v0}, Lorg/osmdroid/views/CustomZoomButtonsController;->access$000(Lorg/osmdroid/views/CustomZoomButtonsController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController$1;->this$0:Lorg/osmdroid/views/CustomZoomButtonsController;

    invoke-static {v0}, Lorg/osmdroid/views/CustomZoomButtonsController;->access$100(Lorg/osmdroid/views/CustomZoomButtonsController;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 47
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController$1;->this$0:Lorg/osmdroid/views/CustomZoomButtonsController;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-static {v0, v2}, Lorg/osmdroid/views/CustomZoomButtonsController;->access$202(Lorg/osmdroid/views/CustomZoomButtonsController;F)F

    .line 50
    iget-object v0, p0, Lorg/osmdroid/views/CustomZoomButtonsController$1;->this$0:Lorg/osmdroid/views/CustomZoomButtonsController;

    invoke-static {v0}, Lorg/osmdroid/views/CustomZoomButtonsController;->access$300(Lorg/osmdroid/views/CustomZoomButtonsController;)V

    .line 51
    return-void
.end method

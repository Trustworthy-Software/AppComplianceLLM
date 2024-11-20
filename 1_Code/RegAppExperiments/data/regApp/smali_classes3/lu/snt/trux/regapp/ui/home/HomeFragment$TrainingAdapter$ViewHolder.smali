.class public Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field textTrainingDate:Landroid/widget/TextView;

.field textTrainingDuration:Landroid/widget/TextView;

.field textTrainingIntensity:Landroid/widget/TextView;

.field textTrainingLocation:Landroid/widget/TextView;

.field final synthetic this$1:Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter;


# direct methods
.method public constructor <init>(Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$1"    # Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 292
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;->this$1:Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter;

    .line 293
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 294
    sget v0, Llu/snt/trux/regapp/R$id;->textTrainingDate:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;->textTrainingDate:Landroid/widget/TextView;

    .line 295
    sget v0, Llu/snt/trux/regapp/R$id;->textTrainingDuration:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;->textTrainingDuration:Landroid/widget/TextView;

    .line 296
    sget v0, Llu/snt/trux/regapp/R$id;->textTrainingIntensity:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;->textTrainingIntensity:Landroid/widget/TextView;

    .line 297
    sget v0, Llu/snt/trux/regapp/R$id;->textTrainingLocation:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;->textTrainingLocation:Landroid/widget/TextView;

    .line 298
    return-void
.end method

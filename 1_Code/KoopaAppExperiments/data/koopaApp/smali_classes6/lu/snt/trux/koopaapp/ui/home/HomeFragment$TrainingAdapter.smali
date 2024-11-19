.class public Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llu/snt/trux/koopaapp/ui/home/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrainingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Llu/snt/trux/koopaapp/ui/home/HomeFragment;

.field private trainingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llu/snt/trux/koopaapp/Utils/Training;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llu/snt/trux/koopaapp/ui/home/HomeFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/koopaapp/ui/home/HomeFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Llu/snt/trux/koopaapp/Utils/Training;",
            ">;)V"
        }
    .end annotation

    .line 261
    .local p2, "trainingList":Ljava/util/List;, "Ljava/util/List<Llu/snt/trux/koopaapp/Utils/Training;>;"
    iput-object p1, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter;->this$0:Llu/snt/trux/koopaapp/ui/home/HomeFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 262
    iput-object p2, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter;->trainingList:Ljava/util/List;

    .line 263
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 287
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter;->trainingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 257
    check-cast p1, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter;->onBindViewHolder(Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 275
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter;->trainingList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu/snt/trux/koopaapp/Utils/Training;

    .line 278
    .local v0, "training":Llu/snt/trux/koopaapp/Utils/Training;
    iget-object v1, p1, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;->textTrainingDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Llu/snt/trux/koopaapp/Utils/Training;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p1, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;->textTrainingDuration:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Llu/snt/trux/koopaapp/Utils/Training;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " min ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p1, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;->textTrainingIntensity:Landroid/widget/TextView;

    invoke-virtual {v0}, Llu/snt/trux/koopaapp/Utils/Training;->getIntensity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p1, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;->textTrainingLocation:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter;->this$0:Llu/snt/trux/koopaapp/ui/home/HomeFragment;

    invoke-virtual {v3}, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Llu/snt/trux/koopaapp/Utils/Training;->getCity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter;->this$0:Llu/snt/trux/koopaapp/ui/home/HomeFragment;

    invoke-virtual {v3}, Llu/snt/trux/koopaapp/ui/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Llu/snt/trux/koopaapp/Utils/Training;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 257
    invoke-virtual {p0, p1, p2}, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 268
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Llu/snt/trux/koopaapp/R$layout;->card_training:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, "view":Landroid/view/View;
    new-instance v1, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter$ViewHolder;-><init>(Llu/snt/trux/koopaapp/ui/home/HomeFragment$TrainingAdapter;Landroid/view/View;)V

    return-object v1
.end method

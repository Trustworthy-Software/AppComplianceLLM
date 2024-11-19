.class Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;
.super Ljava/lang/Object;
.source "TrainingFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;


# direct methods
.method constructor <init>(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    .line 175
    iput-object p1, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .line 179
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 212
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetmContext(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetaddTrainingButton(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetaddTrainingButton(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/widget/Button;

    move-result-object v0

    const v2, -0x777778

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 215
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetnoGpsMessageTextView(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 202
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetmContext(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetaddTrainingButton(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetaddTrainingButton(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v1}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetmContext(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/content/Context;

    move-result-object v1

    sget v2, Llu/snt/trux/koopaapp/R$color;->primaryColor:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 205
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetnoGpsMessageTextView(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 184
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 187
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetaddTrainingButton(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetaddTrainingButton(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-virtual {v1}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Llu/snt/trux/koopaapp/R$color;->primaryColor:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 189
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetnoGpsMessageTextView(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetaddTrainingButton(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetaddTrainingButton(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/widget/Button;

    move-result-object v0

    const v2, -0x777778

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 194
    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$2;->this$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    invoke-static {v0}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->-$$Nest$fgetnoGpsMessageTextView(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    :cond_1
    :goto_0
    return-void
.end method

.class public final synthetic Llu/snt/trux/koopaapp/ui/home/TrainingFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;


# direct methods
.method public synthetic constructor <init>(Llu/snt/trux/koopaapp/ui/home/TrainingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$$ExternalSyntheticLambda1;->f$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Llu/snt/trux/koopaapp/ui/home/TrainingFragment$$ExternalSyntheticLambda1;->f$0:Llu/snt/trux/koopaapp/ui/home/TrainingFragment;

    check-cast p1, Landroid/location/Location;

    invoke-virtual {v0, p1}, Llu/snt/trux/koopaapp/ui/home/TrainingFragment;->lambda$retrieveLocation$1$lu-snt-trux-koopaapp-ui-home-TrainingFragment(Landroid/location/Location;)V

    return-void
.end method

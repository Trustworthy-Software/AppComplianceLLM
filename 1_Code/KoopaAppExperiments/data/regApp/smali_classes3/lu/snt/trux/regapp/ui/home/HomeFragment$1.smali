.class Llu/snt/trux/regapp/ui/home/HomeFragment$1;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llu/snt/trux/regapp/ui/home/HomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Llu/snt/trux/regapp/ui/home/HomeFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Llu/snt/trux/regapp/ui/home/HomeFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;

    iput-object p2, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 2
    .param p1, "databaseError"    # Lcom/google/firebase/database/DatabaseError;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u274c Failed to show data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegApp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 14
    .param p1, "dataSnapshot"    # Lcom/google/firebase/database/DataSnapshot;

    .line 81
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 82
    .local v0, "userHeight":I
    const-string v1, "weight"

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 83
    .local v1, "userWeight":D
    const-string v3, "sex"

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    .local v3, "userSex":Ljava/lang/String;
    const-string v4, "birthDate"

    invoke-virtual {p1, v4}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 87
    .local v4, "userBirthDate":Ljava/lang/String;
    iget-object v5, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;

    invoke-static {v5}, Llu/snt/trux/regapp/ui/home/HomeFragment;->-$$Nest$fgetuserHeightTextView(Llu/snt/trux/regapp/ui/home/HomeFragment;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v5, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;

    invoke-static {v5}, Llu/snt/trux/regapp/ui/home/HomeFragment;->-$$Nest$fgetuserWeightTextView(Llu/snt/trux/regapp/ui/home/HomeFragment;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v5, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;

    invoke-static {v5}, Llu/snt/trux/regapp/ui/home/HomeFragment;->-$$Nest$fgetuserSexTextView(Llu/snt/trux/regapp/ui/home/HomeFragment;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    if-eqz v4, :cond_1

    .line 94
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "dd/MM/yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 96
    .local v5, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 98
    .local v6, "birthDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 99
    .local v7, "dob":Ljava/util/Calendar;
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 103
    .local v8, "today":Ljava/util/Calendar;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    sub-int/2addr v10, v9

    .line 104
    .local v10, "age":I
    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ge v11, v9, :cond_0

    .line 105
    add-int/lit8 v10, v10, -0x1

    .line 109
    :cond_0
    iget-object v9, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;

    invoke-static {v9}, Llu/snt/trux/regapp/ui/home/HomeFragment;->-$$Nest$fgetuserAgeTextView(Llu/snt/trux/regapp/ui/home/HomeFragment;)Landroid/widget/TextView;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v6    # "birthDate":Ljava/util/Date;
    .end local v7    # "dob":Ljava/util/Calendar;
    .end local v8    # "today":Ljava/util/Calendar;
    .end local v10    # "age":I
    goto :goto_0

    .line 110
    :catch_0
    move-exception v6

    .line 111
    .local v6, "e":Ljava/text/ParseException;
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u274c Failed to show data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RegApp"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v5    # "format":Ljava/text/SimpleDateFormat;
    .end local v6    # "e":Ljava/text/ParseException;
    :cond_1
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v5, "trainingList":Ljava/util/List;, "Ljava/util/List<Llu/snt/trux/regapp/Utils/Training;>;"
    iget-object v6, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$1;->val$view:Landroid/view/View;

    sget v7, Llu/snt/trux/regapp/R$id;->recyclerView:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    .local v6, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    iget-object v7, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$1;->val$view:Landroid/view/View;

    sget v8, Llu/snt/trux/regapp/R$id;->emptyMessage:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 122
    .local v7, "emptyMessage":Landroid/widget/TextView;
    new-instance v8, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v9, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;

    invoke-virtual {v9}, Llu/snt/trux/regapp/ui/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 125
    new-instance v8, Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter;

    iget-object v9, p0, Llu/snt/trux/regapp/ui/home/HomeFragment$1;->this$0:Llu/snt/trux/regapp/ui/home/HomeFragment;

    invoke-direct {v8, v9, v5}, Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter;-><init>(Llu/snt/trux/regapp/ui/home/HomeFragment;Ljava/util/List;)V

    .line 126
    .local v8, "adapter":Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter;
    invoke-virtual {v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 129
    const-string v9, "trainings"

    invoke-virtual {p1, v9}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v9

    .line 131
    .local v9, "trainingObjectsSnapshot":Lcom/google/firebase/database/DataSnapshot;
    invoke-virtual {v9}, Lcom/google/firebase/database/DataSnapshot;->getChildrenCount()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    const/4 v11, 0x0

    const/16 v12, 0x8

    if-nez v10, :cond_2

    .line 133
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    invoke-virtual {v6, v12}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2

    .line 137
    :cond_2
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    invoke-virtual {v6, v11}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 140
    invoke-virtual {v9}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/database/DataSnapshot;

    .line 142
    .local v11, "trainingSnapshot":Lcom/google/firebase/database/DataSnapshot;
    const-class v12, Llu/snt/trux/regapp/Utils/Training;

    invoke-virtual {v11, v12}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Llu/snt/trux/regapp/Utils/Training;

    .line 145
    .local v12, "userTraining":Llu/snt/trux/regapp/Utils/Training;
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {v8}, Llu/snt/trux/regapp/ui/home/HomeFragment$TrainingAdapter;->notifyDataSetChanged()V

    .line 149
    .end local v11    # "trainingSnapshot":Lcom/google/firebase/database/DataSnapshot;
    .end local v12    # "userTraining":Llu/snt/trux/regapp/Utils/Training;
    goto :goto_1

    .line 151
    :cond_3
    :goto_2
    return-void
.end method

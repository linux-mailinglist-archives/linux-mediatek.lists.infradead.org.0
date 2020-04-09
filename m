Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 714AB1A3BBA
	for <lists+linux-mediatek@lfdr.de>; Thu,  9 Apr 2020 23:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mjdrYycv4515H62ZCC9X6DnFXHuqjAUlItoQc/WhcWM=; b=Ec62f4Ga0fwc+N
	8cX8H/nUU2fLU4jYmpKYF7Bct+eYgK9iddb3WC5y0FRFNMur8iTtBYyx3rUIhpws3gcaXEFitOTy9
	e7MHH26lRm/RW2Li1bRFja4ftzXctKw6KQg3IUh5besS6Fhp/8rRJQbTkNmQSvXh4eYz2N1lwY5a3
	2F+IJ0rQmKV4O/VvGzowRcgtU+MfPfc1WHMg1WI63yats7XQ4X/4S7g8MNeeVH4uFAxSfssUn48Fm
	vDG2gcwNPMu1HGMUDZackCcFY0/knaZnThmDeJg+YwVftXkmizx1RWgVFmdLueRVQdq0AIq23HOFG
	zB+JrrwSq/KrQSlYymrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMeS4-0008Hr-0z; Thu, 09 Apr 2020 21:11:08 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMeRv-0008B7-Io
 for linux-mediatek@lists.infradead.org; Thu, 09 Apr 2020 21:11:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586466654;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4DPU6JhgRhsgSW8yU1MugfSEkXixjV0BDeuUfVfgSNI=;
 b=Tfrfz0sg6vt7unE4TU8DVesOOg49BqaYl6bKlc2/n01j5eHmZ3GQ9IzuMRKUGIvBpbPtXT
 FFxgEdh/bEuuxAPO5I8Juf/Qwn5Ri08USqWJTEwq9A8WsjpeS1xZtdnHnO9I78JfJn+OSl
 wUhSq2d/EhnT6FIIaYIYZhkKgyMLrEk=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-156-_3Z84VsBPwG9LlPQ--9F7w-1; Thu, 09 Apr 2020 17:10:52 -0400
X-MC-Unique: _3Z84VsBPwG9LlPQ--9F7w-1
Received: by mail-wr1-f72.google.com with SMTP id u16so7357242wrp.14
 for <linux-mediatek@lists.infradead.org>; Thu, 09 Apr 2020 14:10:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=77s3qEqZUXwYYItZCoNg0WQiFcIAKlBUF4mxWQL3Gog=;
 b=UT4TpVP4b30yN/JhgbaEinaoE5Rcu+HheSucfL2zIw2NtkJQBEM291lkXZmESxAiIW
 N5LHfFbaGrW49z3q59fjCpr98K2KqRJK/bg0xOAOAaWeji7T8hbbqcjAfBgYzS7lKxvh
 t5TyywKdW6WyuXDsDGe8saSoUuKgUgBr8kF96Pom0xwwbnARgLkX9ivczbwgdM/qN8bN
 APAzf/Hth7MVVnmRgVkFcsPQM1SVuJWSQbK5a1B1QLiYl6pN+Pk1MHMlSMlCGTFC6TJr
 sKHOYvVfuy1v5P9MFEjaVxtwxUQoPE+tEJf2OjVcpDFratqnPyKLz+Yv4nAk1bEym69S
 dhgQ==
X-Gm-Message-State: AGi0PuaBjxAVK11Fsjmdh3f+7KfPeKxcY3P0LUFSpfK9nXqTgqrbBJQS
 D2QCzKGS0hGnfsg9d512V2BUnOC2YLfmJvnUK8dNiYDQRlMHTGcZwQcL2sWyHfWpkutJbrSvGyl
 Y6ODWZUjKz5ZaTCUehjAnWhSQO9YzOB3+
X-Received: by 2002:adf:e409:: with SMTP id g9mr1046831wrm.51.1586466651274;
 Thu, 09 Apr 2020 14:10:51 -0700 (PDT)
X-Google-Smtp-Source: APiQypLy4PXbKq8mbP7kwgtN1Q+giosGvjsros8EbCALYN5EyYBQyGeYWvZCX+ftIrPSN/+taBS7uA==
X-Received: by 2002:adf:e409:: with SMTP id g9mr1046809wrm.51.1586466651031;
 Thu, 09 Apr 2020 14:10:51 -0700 (PDT)
Received: from redhat.com (bzq-109-67-97-76.red.bezeqint.net. [109.67.97.76])
 by smtp.gmail.com with ESMTPSA id
 f2sm6047650wro.59.2020.04.09.14.10.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 14:10:50 -0700 (PDT)
Date: Thu, 9 Apr 2020 17:10:48 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] rpmsg: pull in slab.h
Message-ID: <20200409211045.12025-1-mst@redhat.com>
MIME-Version: 1.0
X-Mailer: git-send-email 2.24.1.751.gd10ce2899c
X-Mutt-Fcc: =sent
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_141059_694378_169B859D 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Ohad Ben-Cohen <ohad@wizery.com>, linux-remoteproc@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

In preparation to virtio header changes, include slab.h directly as
this module is using it.

Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
---
 drivers/rpmsg/mtk_rpmsg.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/rpmsg/mtk_rpmsg.c b/drivers/rpmsg/mtk_rpmsg.c
index 232aa4e40133..83f2b8804ee9 100644
--- a/drivers/rpmsg/mtk_rpmsg.c
+++ b/drivers/rpmsg/mtk_rpmsg.c
@@ -8,6 +8,7 @@
 #include <linux/platform_device.h>
 #include <linux/remoteproc.h>
 #include <linux/rpmsg/mtk_rpmsg.h>
+#include <linux/slab.h>
 #include <linux/workqueue.h>
 
 #include "rpmsg_internal.h"
-- 
MST


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D32D01A90B9
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 Apr 2020 04:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/LHWrAoyOGAgyTsqy4FbRPoRq1f2giMtxhCM5xj8mk=; b=La78WKgqV6YDJ3
	AVQHQpHuMXD6uqcEuO+cxL0nSVo3/ghpw2zDMe7KthOfGHyH3LAluuzHJTbD/LJ+quEbMcJJKIhfI
	P0nrL7POtKCxgrU+OXt5V+DhLuArFMuKrvMhpaeFxzp0hf3kyeIYV3SQgEmGD6rMUeemJoG3JCkN6
	LaGBLBzp1iy4U8LKMOpSkoSVmtcRgqMqm0LtV5xoMVsvCL4/yD8YZ4vxpcBSSq66QeAkpHINm9S+n
	cY0eZQdLokaBXWNFoVkeeuZTR5pwAswsxpS0xPsLEeIX3J1r5xiLNYaOKMF+u5LWdCQY7VnXSy8Qp
	1G4GP1dc43eEcPLMd1rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOXOq-000760-T6; Wed, 15 Apr 2020 02:03:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOXOo-00075J-3V
 for linux-mediatek@lists.infradead.org; Wed, 15 Apr 2020 02:03:35 +0000
X-UUID: 7f21ae7e1d704cc49e1eacebd7b2de37-20200414
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=bIUc1LatWTPrRy0d0hIMzrPytsvlDok1S2YutEMtvpY=; 
 b=pGa7f6AEhu0gFbZjS5Z0LX1aSJhT3HT0Cja7zjbk0vTDLL//95+yFUEg8ffasW8J+1Ry83bWL3fX2eN4jba/jmWE6FIKKKHZjB5B3p0dLakeRiTvKzZbKE0Mk7kOj5LwhshWnKUYnrWhbs2NsOtddI8dFHlnrMHpTMqyKJkOTR8=;
X-UUID: 7f21ae7e1d704cc49e1eacebd7b2de37-20200414
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1847102625; Tue, 14 Apr 2020 18:03:20 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 14 Apr 2020 18:53:24 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 15 Apr 2020 09:53:26 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 15 Apr 2020 09:53:25 +0800
Message-ID: <1586915606.5647.5.camel@mtkswgap22>
Subject: Re: [PATCH] mm/gup: fix null pointer dereference detected by coverity
From: Miles Chen <miles.chen@mediatek.com>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Wed, 15 Apr 2020 09:53:26 +0800
In-Reply-To: <20200414170827.d32fc1fc12a33b140b740b94@linux-foundation.org>
References: <20200407095107.1988-1-miles.chen@mediatek.com>
 <20200414170827.d32fc1fc12a33b140b740b94@linux-foundation.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_190334_153510_84B2FE27 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-mm@kvack.org, Peter Xu <peterx@redhat.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2020-04-14 at 17:08 -0700, Andrew Morton wrote:
> On Tue, 7 Apr 2020 17:51:07 +0800 Miles Chen <miles.chen@mediatek.com> wrote:
> 
> > In fixup_user_fault(), it is possible that unlocked is NULL,
> > so we should test unlocked before using it.
> > 
> > For example, in arch/arc/kernel/process.c, NULL is passed
> > to fixup_user_fault().
> > 
> > SYSCALL_DEFINE3(arc_usr_cmpxchg, int *, uaddr, int, expected, int, new)
> > {
> > ...
> > 	ret = fixup_user_fault(current, current->mm, (unsigned long) uaddr,
> > 			       FAULT_FLAG_WRITE, NULL);
> > ...
> > }
> 
> (cc Peter)
> 
> > --- a/mm/gup.c
> > +++ b/mm/gup.c
> > @@ -1230,7 +1230,8 @@ int fixup_user_fault(struct task_struct *tsk, struct mm_struct *mm,
> >  	if (ret & VM_FAULT_RETRY) {
> >  		down_read(&mm->mmap_sem);
> >  		if (!(fault_flags & FAULT_FLAG_TRIED)) {
> > -			*unlocked = true;
> > +			if (unlocked)
> > +				*unlocked = true;
> >  			fault_flags |= FAULT_FLAG_TRIED;
> >  			goto retry;
> >  		}
> 
> Not sure.  If the caller passes FAULT_FLAG_ALLOW_RETRY then they must
> also pass in a valid non-NULL `unlocked'.  If the caller passed
> FAULT_FLAG_ALLOW_RETRY and unlocked==NULL then the resulting oops is an
> appropriate way of reporting this mistake.  I think?
> 
Agree. How about put "unlocked==NULL must not be used with
FAULT_FLAG_ALLOW_RETRY." in the comment? Make it easier to understand
the oops.

e.g., 

--- a/mm/gup.c
+++ b/mm/gup.c
@@ -1176,7 +1176,8 @@ static bool vma_permits_fault(struct
vm_area_struct *vma,
  * @address:   user address
  * @fault_flags:flags to pass down to handle_mm_fault()
  * @unlocked:  did we unlock the mmap_sem while retrying, maybe NULL if
caller
- *             does not allow retry
+ *             does not allow retry. If NULL, the caller must guarantee
+ *             the fault_flags does not contain FAULT_FLAG_ALLOW_RETRY.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

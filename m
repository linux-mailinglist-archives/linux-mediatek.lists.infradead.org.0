Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AA71A1376
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Apr 2020 20:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daFQ1qHcOsgQBU4X6ZDf/tjxT25LOCrodKCAmBhHp5s=; b=e/axrASdNi5nqE
	SKT3aqm2cEpE9TIqJNAm6uUoUBwo/DQQBjkoG3ADDXBzGfm1zROz8u8p7zGXsEVPy6CXsAiBDlm4g
	/COCDjUsqE7YIGtL2aWCkQZjXv5nqzNpcYlcIwwSykLP9y5JAEZzattsz/RnRry2ZZUQEbnhNVowb
	udSBICWEPmTPFqdrO/ZNCzXueIYvYwt2KKlO1ThQ0U/tc1FYxg4+ZlldWrOZh54gSmOZH2hixzzMr
	7U2s/hFKCRaF6/jfRDDxelb0q6BfAVtqkBAYmvGQ+dJVLWlQFws9HmfL1lxHXueYpM/tSG87qiuGU
	iDasrK3hk62u22M9nN3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLsoc-0003Cy-0R; Tue, 07 Apr 2020 18:19:14 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLsoY-0003BA-JX
 for linux-mediatek@lists.infradead.org; Tue, 07 Apr 2020 18:19:11 +0000
IronPort-SDR: Uz//XkFb8aET2cnppP2vJQ1FDOjuyaJX3q/+nCPdRF6MR4S2T2GTTBA0X2YnZrgHJ8upKBupKF
 awgrB3dzKF0Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 11:19:08 -0700
IronPort-SDR: hrIdburDaMCzTAQyPcSF6hxKn0vdzYIyj0JgJyyQtUugCGrjCw8SK7PRdi+nBnpzQcRmt5bpho
 ZdVHFyZ+P7BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="451317416"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by fmsmga005.fm.intel.com with ESMTP; 07 Apr 2020 11:19:08 -0700
Date: Tue, 7 Apr 2020 11:19:08 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Miles Chen <miles.chen@mediatek.com>
Subject: Re: [PATCH] mm/gup: fix null pointer dereference detected by coverity
Message-ID: <20200407181908.GB94792@iweiny-DESK2.sc.intel.com>
References: <20200407095107.1988-1-miles.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407095107.1988-1-miles.chen@mediatek.com>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_111910_685309_619E6EA7 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 05:51:07PM +0800, Miles Chen wrote:
> In fixup_user_fault(), it is possible that unlocked is NULL,
> so we should test unlocked before using it.
> 
> For example, in arch/arc/kernel/process.c, NULL is passed
> to fixup_user_fault().
> 
> SYSCALL_DEFINE3(arc_usr_cmpxchg, int *, uaddr, int, expected, int, new)
> {
> ...
> 	ret = fixup_user_fault(current, current->mm, (unsigned long) uaddr,
> 			       FAULT_FLAG_WRITE, NULL);
> ...
> }
> 
> Fixes: 4a9e1cda2748 ("mm: bring in additional flag for fixup_user_fault to signal unlock")
> Signed-off-by: Miles Chen <miles.chen@mediatek.com>

Reviewed-by: Ira Weiny <ira.weiny@intel.com>

> ---
>  mm/gup.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/mm/gup.c b/mm/gup.c
> index da3e03185144..a68d11dc232d 100644
> --- a/mm/gup.c
> +++ b/mm/gup.c
> @@ -1230,7 +1230,8 @@ int fixup_user_fault(struct task_struct *tsk, struct mm_struct *mm,
>  	if (ret & VM_FAULT_RETRY) {
>  		down_read(&mm->mmap_sem);
>  		if (!(fault_flags & FAULT_FLAG_TRIED)) {
> -			*unlocked = true;
> +			if (unlocked)
> +				*unlocked = true;
>  			fault_flags |= FAULT_FLAG_TRIED;
>  			goto retry;
>  		}
> -- 
> 2.18.0

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

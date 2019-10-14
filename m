Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D721D65D5
	for <lists+linux-mediatek@lfdr.de>; Mon, 14 Oct 2019 17:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAJ57qDdXEAPsg8xu/eGyS8fO4ZQOA//rTbzL5oZnEw=; b=Gcoufn+047ias9
	NyhT5NOiLA2RudXtO8TCyCRCTL7u1PMyIN/ImttBDxVTy8xRifxw4/TpNS5BSB3VTKklTLdIGRPw4
	B08jkYJZxHMyJh5gW6qhDZtw0EWi+CaSorSFKiGKJxeN9vA6UFR/wTyMLZUFAqXG5kBWKgSjQxpmV
	IWaAvN4iTTTstkLAypFleDuOpFghyJ0nWPp+oC3sARIkC9xs2ztOvlt6xqcxTHA7OIeGTX/qgAY0f
	+5GnCTldV84Hn3T0JRo0K2CVgTR5JGEfkUZxvxl/z9J1isAMYmvjLKfsdnlUpvs6nt1DWPfSmmqR5
	gug41fkoi9kF8G5LG9pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1uO-00083C-AK; Mon, 14 Oct 2019 15:05:16 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iK1uE-0007fP-VL; Mon, 14 Oct 2019 15:05:06 +0000
Date: Mon, 14 Oct 2019 08:05:06 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Walter Wu <walter-zh.wu@mediatek.com>
Subject: Re: [PATCH 1/2] kasan: detect negative size in memory operation
 function
Message-ID: <20191014150506.GX32665@bombadil.infradead.org>
References: <20191014103632.17930-1-walter-zh.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014103632.17930-1-walter-zh.wu@mediatek.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: wsd_upstream@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 06:36:32PM +0800, Walter Wu wrote:
> @@ -110,8 +111,9 @@ void *memset(void *addr, int c, size_t len)
>  #undef memmove
>  void *memmove(void *dest, const void *src, size_t len)
>  {
> -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> +	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> +	!check_memory_region((unsigned long)dest, len, true, _RET_IP_))

This indentation is wrong.  Should be:
+	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
+	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_))

(also in one subsequent function)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

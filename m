Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F82649D98
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Jun 2019 11:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Koj1mb5WyBtgAAcR8FGy2l2RdyMXz0uz6mx++itn4WI=; b=FxXBr8mFSS1TKY
	kR9oiyRE+xwpWL1OPnn8NgkckZDrQ2jhactfUe+rom7BMiL3qjtBySK4T2QW6UdkyEHgaITQ+Gmbm
	K+8GIirKLUHQSdWDmpk0aQ9nc4e9lTHTHa812gpgH4cZZ0oUHukaSM5TnG/ruktSw0HeRuuuLL5wk
	cDBQWGNkAuQ62Ke3o+4Q/EaWIPfSK8z/992235WeQ7zBM93cAENhapDibDsUZbKs1CbbwAYQOCoat
	i4BXMcnOX/EeoY0LNZ9Nh3Ucx9o7apnaSCTZBVosSHgfXrlvWmfMxRiKUKSHc+2bR3j8s1O7A3rq5
	0CgNQLyBj+RS4VGCBofA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAba-0000zT-En; Tue, 18 Jun 2019 09:40:42 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAbW-0000yS-1h
 for linux-mediatek@lists.infradead.org; Tue, 18 Jun 2019 09:40:39 +0000
Received: by mail-qt1-x843.google.com with SMTP id a15so14415475qtn.7
 for <linux-mediatek@lists.infradead.org>; Tue, 18 Jun 2019 02:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sx+uoqZX+E26FwAdy0UVf6Xae+tNkAxKBycx25Vr+DQ=;
 b=NDcEp2QDdH2imEiq1/LplZPmehlYazwNn4mvAvNI+yXn0frX+r0s/YFv5XN2E0HnWL
 1WxSjmUyJX9L9DsYC8+JelW9j8Kf23gexSTvQOKYpaL4CE05bai/9B2GMnSOy0Z3hdPi
 6OXM81a7/mbhug+37u9hXS1NCBtFuBvSbhnNU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sx+uoqZX+E26FwAdy0UVf6Xae+tNkAxKBycx25Vr+DQ=;
 b=qCOg9kuRJmVYL1e32/MM+cJhhTfZfGa9aN64CzX3CMvrJP6Izm02ouRWcl6YI5oWkO
 ReZLBZW10dnD+Pbn2ZKq7LkzciTyY9zTAbXytJ+ULee1FjipjwbJLxK1DtJ9aZZ5jPd1
 5HlLbdfkZzfjuL8ERkM6EOvHa58zsLqtyHhJ8/FE45DlBEJ72yd2DqKIwgJy5v1WWu+c
 4BEvC7imbFuY/FU7VlmWDN99Kstx+48H0cy6Qv707VK/bOpe1SVJOJpW6IHFrAHVnER7
 Ja+kPFqPQBrU+0W6VbGHBMFowy+1FKVGuUsk+RXnOi8eD33BPJ6D3znB+3b09LkjTnD4
 FtOg==
X-Gm-Message-State: APjAAAX5W7mrfuld2zz+HH02aMsWXHEwD7br0tnDUMamQzTvfhRayvn8
 FVc2rIDfegmZPYqP8N232qpO9SIcIRtImgChoPr4kA==
X-Google-Smtp-Source: APXvYqw6KyfodKw1VNGNeGg3zDrU+mIRBCKBKL7IJ3KojeHwXvWkaBPNJyg1OnvTlG4ZkYZA3wAUG7nOA2AXUhwcAfM=
X-Received: by 2002:a0c:89b7:: with SMTP id 52mr26611294qvr.199.1560850836716; 
 Tue, 18 Jun 2019 02:40:36 -0700 (PDT)
MIME-Version: 1.0
References: <1558670066-22484-1-git-send-email-xixi.chen@mediatek.com>
 <1558670066-22484-4-git-send-email-xixi.chen@mediatek.com>
In-Reply-To: <1558670066-22484-4-git-send-email-xixi.chen@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 18 Jun 2019 17:40:10 +0800
Message-ID: <CAJMQK-gTh-Zm8ct-DMsjee7H8GJKWxJ2BWW=YKXeinmAiW98gQ@mail.gmail.com>
Subject: Re: [PATCH v2, 3/3] mt8183: emi: add bandwidth driver support
To: Xi Chen <xixi.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_024038_111921_C33F6062 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, srv_heupstream@mediatek.com,
 CK Hu <ck.hu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 3:54 AM Xi Chen <xixi.chen@mediatek.com> wrote:

> +struct mtk_emi {
> +       struct device *dev;
> +       void __iomem *cen_emi_base;
> +       void __iomem *chn_emi_base[MAX_CH];
> +       void __iomem *emi_mpu_base;
> +
> +       struct timer_list emi_bw_timer;
> +       struct timeval old_tv;
> +
> +       unsigned long long emi_bw_array[EMI_BW_ARRAY_SIZE];
> +       int emi_bw_cur_idx;
> +};
> +
> +static unsigned long long emi_get_max_bw_in_last_array(struct device *dev,
> +       unsigned long long arr[], unsigned int size)
> +{
> +       unsigned int i = 0;
> +       unsigned long long max = arr[0];
> +
> +       while (i < size) {
> +               if (arr[i] > max)
> +                       max = arr[i];
> +               ++i;
> +       }
> +       return max;
> +}
Would it better that if we store max element in mtk_emi struct{}, so
that we don't need to scan entire array everytime to find max? Though
array size only 67.
This max element can be update in emi_update_bw_array().

> +unsigned long long mtk_emi_get_max_bw(struct device *dev)
> +{
> +       struct mtk_emi *emi;
> +
> +       if (!dev)
> +               return 0;
> +
> +       emi = dev_get_drvdata(dev);
> +       return emi_get_max_bw_in_last_array(dev,
> +               emi->emi_bw_array, ARRAY_SIZE(emi->emi_bw_array));
> +}
> +EXPORT_SYMBOL(mtk_emi_get_max_bw);
> +
> +static void emi_update_bw_array(struct device *dev, unsigned int val)
> +{
> +       struct mtk_emi *emi = dev_get_drvdata(dev);
> +
> +       if (emi->emi_bw_cur_idx == emi->EMI_BW_ARRAY_SIZE) {
> +               /* remove the first array element */
> +               memmove(emi->emi_bw_array, emi->emi_bw_array + 1,
> +                       sizeof(unsigned long long) * (emi->EMI_BW_ARRAY_SIZE - 1));
> +               emi->emi_bw_array[emi->EMI_BW_ARRAY_SIZE - 1] = val;
> +       } else
> +               emi->emi_bw_array[emi->emi_bw_cur_idx++] = val;
> +}
> +
Is the order of the emi_bw_array important?
If not, update latest element don't need to be at the end, so we don't
need O(n) shift everytime when inserting new element.
If the order is important, we can also do insert in O(1), by adding a
pointer that points to the oldest element in array. When insert a new
element, replace oldest element with latest one and move the pointer
one space backward.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

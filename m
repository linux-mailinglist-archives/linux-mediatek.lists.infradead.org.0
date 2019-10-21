Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BB8DE58C
	for <lists+linux-mediatek@lfdr.de>; Mon, 21 Oct 2019 09:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WunEEgvozTLDBrgL8tKOZieJ0v91P3I1TJGiXHk4WPg=; b=VM5vooaJtq0xnB
	r98rURMyqixcIlwQ3NnC4pPwK3fzG5kOeHvVxdGJmV1eWgXRc/eYr6Unfwv6ydr+HVIrm/DkxsW10
	LDOkPLvilD2Su48fU8fGpYXBscsdUXXyH3lX7IOTkO+AZwRTRu5ag7Vmr0fsq/zS62PuJkcTkkjko
	GwLEmHu4R+4hyJPHGlle3kQHrllz/n8DFESVT8VdZt/6DBEyFp00n+jspUIQttnlVaXmoOE40FHiP
	c9h+q1cDLzUDOtEbsrHz7Cu4BmCLifJh5MY2+8QnLTcEoRODMetpenQaqv9RN1xAFscBHRgE+N5Sg
	Zfehe1Zb//IQAqUy9+fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMSUZ-00045m-V6; Mon, 21 Oct 2019 07:52:40 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSUM-0003sz-7J
 for linux-mediatek@lists.infradead.org; Mon, 21 Oct 2019 07:52:29 +0000
Received: by mail-ed1-x541.google.com with SMTP id c4so9282507edl.0
 for <linux-mediatek@lists.infradead.org>; Mon, 21 Oct 2019 00:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lshseq5695iLMWS2/yTnU4q4phMFdnGbVyLcqMyDgNw=;
 b=f4plsD5OF7QI01+J/daaDJeoz3LkteQ6BQB7+jftsCG7vHACEuYAS0/ifg1VOZ+2bv
 DVnIY34EwF6RV/LyAIkxxcICf5gDAB5lJnzvHZwPiIbqUNd0/Lda6KhsIL7Vv666qS53
 0dm2LtJmUWVBz3Z6INSe5m7WXyh7OwRPV6IN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lshseq5695iLMWS2/yTnU4q4phMFdnGbVyLcqMyDgNw=;
 b=sciFmSVwKUrec0ReaJCzAmY64PRU3pA/Fg5CmFEJmSbBAr+u7JX/e1tF8JYp29cZhY
 YbP/qoRlSFhv04GkSoq1Ea0vX4L6KOua1IM+p3gO3+Hb8fUJ4OIWGs1VfLbzDuR1mXTE
 giVSLSKaEMvT3Mxk0FBHpnKI93XZK9Y2wFu5CRqvVzECasE8I3STNp6T5C46oQ/HCXoP
 duhty9w8XWr/2bkRET9KsQlyMCiyGLl5iBbjlkGvs9mUE9+1SS6+XkLm1yFJNUdeoaxM
 u65p7819pnv8CJXnT6v8j/l5LkbevfoKDDYE7etqNJQyHXuuu8Zdeqf/k8cWWfWJX9X/
 0Uug==
X-Gm-Message-State: APjAAAWwrDt2p7XN0nOxHOZ/HlfHtlb8G12uZPcE45OAHc0vR2yIFbk/
 sUTv3/jyLN62Pfi2a2Z8XWYIA/v2ovRo+qr/D5WiQg==
X-Google-Smtp-Source: APXvYqzlkUpYGQn2syS3ZLVsVWF/tTk0yVfY4fQyTuFCwfaWNooQm7u2tuJVHYSsQtBTu3rWlHNporZiD288c1BLvm4=
X-Received: by 2002:aa7:d8c6:: with SMTP id k6mr23548337eds.87.1571644344157; 
 Mon, 21 Oct 2019 00:52:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190906100514.30803-1-roger.lu@mediatek.com>
 <20190906100514.30803-4-roger.lu@mediatek.com>
In-Reply-To: <20190906100514.30803-4-roger.lu@mediatek.com>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Mon, 21 Oct 2019 15:51:48 +0800
Message-ID: <CANdKZ0dAWWy7QMMZhNHAha5ZpcBo1GHebPc5_FRu5gvBc569QA@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] PM / AVS: SVS: Introduce SVS engine
To: Roger Lu <roger.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_005226_296880_6882F6B4 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Angus Lin <Angus.Lin@mediatek.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 HenryC Chen <HenryC.Chen@mediatek.com>, yt.lee@mediatek.com,
 Fan Chen <fan.chen@mediatek.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Roger,

On Fri, Sep 6, 2019 at 6:06 PM Roger Lu <roger.lu@mediatek.com> wrote:
> ...
> +static int svs_resource_setup(struct mtk_svs *svs)
> ...
> +               for (i = 0, freq = (u32)-1; i < svsb->opp_count; i++, freq--) {
> +                       opp = dev_pm_opp_find_freq_floor(svsb->dev, &freq);
> +                       if (IS_ERR(opp)) {
> +                               pr_err("%s: error opp entry!!, err = %ld\n",
> +                                      svsb->name, PTR_ERR(opp));
> +                               return PTR_ERR(opp);
> +                       }
> +
> +                       svsb->opp_freqs[i] = freq;
> +                       svsb->opp_volts[i] = dev_pm_opp_get_voltage(opp);
> +                       svsb->freqs_pct[i] = percent(svsb->opp_freqs[i],
> +                                                    svsb->freq_base) & 0xff;

Should have dev_pm_opp_put(opp); here.

> +               }
> +       }
> +
> +       return 0;
> +}
> ...
> +static int svs_status_proc_show(struct seq_file *m, void *v)
> ...
> +       for (i = 0, freq = (u32)-1; i < svsb->opp_count; i++, freq--) {
> +               opp = dev_pm_opp_find_freq_floor(svsb->dev, &freq);
> +               if (IS_ERR(opp)) {
> +                       seq_printf(m, "%s: error opp entry!!, err = %ld\n",
> +                                  svsb->name, PTR_ERR(opp));
> +                       return PTR_ERR(opp);
> +               }
> +
> +               seq_printf(m, "opp_freqs[%02u]: %lu, volts[%02u]: %lu, ",
> +                          i, freq, i, dev_pm_opp_get_voltage(opp));
> +               seq_printf(m, "svsb_volts[%02u]: 0x%x, freqs_pct[%02u]: %u\n",
> +                          i, svsb->volts[i], i, svsb->freqs_pct[i]);

Same here.

> +       }
> +
> +       return 0;
> +}
> ...

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

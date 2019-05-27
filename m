Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF3B2AF40
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 May 2019 09:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/1gdcCntH1UF3P+hbVnZq6tur9piC+Act86mXLkzlg=; b=BjS6xv6WMUz+kj
	W93+TZdjY4Anfh0ff5Ztj5ExZ9km2wWfFAv9M1sYZeH+5qTVabJvBp/l7oh4LMCoE1sxooQqPH0gz
	jiTS6rV6IHvgslzbUFZyyj/OSUqYlz90Z/B/UTGEvKGqyaUn76RH9Whu6pea4GR/c2o6E7yNx4+Gz
	ff5eoQ3Sw0/8ft4RRiMkIujt2TmliHeNRejV/puVmR+vH94x4kng5byWXHqE6weBa5ttB0CzHiByD
	0KQQxA6nUz/LwgmwACSVYzkkzEuOrUk9AVzGC4U6tyJE47dIRp+rtoPU9QtE9DBhRu2tVpdcEI6/K
	aKWLy+vFOx4PpMlVLMbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9nZ-0008P0-Go; Mon, 27 May 2019 07:11:57 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9nW-0008Og-Ir
 for linux-mediatek@lists.infradead.org; Mon, 27 May 2019 07:11:55 +0000
Received: by mail-qk1-x744.google.com with SMTP id l128so3586425qke.2
 for <linux-mediatek@lists.infradead.org>; Mon, 27 May 2019 00:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JnAu7DMD33AWKWB4uXYa0NnuCZ18wB104ARVW507wCE=;
 b=AxrZ5wLCH1sL3HpIjPj0sFn4bZH73XLfgHEwkSGiELuA/Rm7aEMlgMOGs7rDwEwPZO
 jcsp2jq1T5QAAfWJ/cDYrDsf67zirWwNSPL+Z6LbkwoVwl+Sj2Ex4w4oEfbXi4gZ2Qyq
 B6QNFkk78c0ohTOGI/C6SK47GkbLNzy/IQk2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JnAu7DMD33AWKWB4uXYa0NnuCZ18wB104ARVW507wCE=;
 b=qX+vDZDCs/IxYwZwGJXAJnnBf0GcBNdEX3glposQyExmg43M7EWfJBXNkUPDdaU7z9
 7OjLKdoRm1U22YJe3NDOcGFv+7ltIf3LyHXNFtetIzMRS5L71vTo9WdSC7Apvz6HQY4K
 g5sTO25I2uCew0eIrfJFlY6hPRZmLrpw2Dvi0n2+pz9tImyxuYere15dcDDmiXd9H4e3
 nhMgT3JzHJTYMZvb6hCISSFRJHRInSs8lvfUIcFod1azeOqOa+ydKkv9CE/AkG/R/RfK
 twe9PhnMGPHuXRg0hTHH1XN52SsaA0MVfjc8MvV8kFPwU/N/9VyfY5B6bCOUgxTKi4g9
 kq+Q==
X-Gm-Message-State: APjAAAUnZzhqVuMKGTfU5CKw9xP14EmsR5JTenB6Cus5RPJia/7O6BWV
 Dv4DjDBcyUEN3iHo8hrSpACO6zhWjJk=
X-Google-Smtp-Source: APXvYqz6WWgZmzrF1XHrT+kKp9jY3+QsT9G7Sa5Y6caYXIj7KPHVeyqmRX5/ibRKLJotmc5tHttiTg==
X-Received: by 2002:ac8:36ce:: with SMTP id b14mr94705272qtc.190.1558941112643; 
 Mon, 27 May 2019 00:11:52 -0700 (PDT)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com.
 [209.85.222.170])
 by smtp.gmail.com with ESMTPSA id d32sm4393370qtk.0.2019.05.27.00.11.51
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 00:11:52 -0700 (PDT)
Received: by mail-qk1-f170.google.com with SMTP id w187so6111023qkb.11
 for <linux-mediatek@lists.infradead.org>; Mon, 27 May 2019 00:11:51 -0700 (PDT)
X-Received: by 2002:ac8:1a9d:: with SMTP id x29mr1304701qtj.128.1558941111275; 
 Mon, 27 May 2019 00:11:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190527065559.66056-1-tientzu@chromium.org>
 <20190527065559.66056-3-tientzu@chromium.org>
In-Reply-To: <20190527065559.66056-3-tientzu@chromium.org>
From: Claire Chang <tientzu@chromium.org>
Date: Mon, 27 May 2019 15:11:40 +0800
X-Gmail-Original-Message-ID: <CALiNf2-Z+xnz4PB1jRbzWmG_EApOXbbAGBb53Rw==B-=fv25Gg@mail.gmail.com>
Message-ID: <CALiNf2-Z+xnz4PB1jRbzWmG_EApOXbbAGBb53Rw==B-=fv25Gg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] uart: mediatek: support Rx in-band wakeup
To: gregkh@linuxfoundation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_001154_644737_F9E9AD8D 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>, linux-serial@vger.kernel.org,
 changqi.hu@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> @@ -572,15 +576,36 @@ static int mtk8250_remove(struct platform_device *pdev)
>  static int __maybe_unused mtk8250_suspend(struct device *dev)
>  {
>         struct mtk8250_data *data = dev_get_drvdata(dev);
> +       struct uart_8250_port *up = serial8250_get_port(data->line);
Sorry. This line doesn't belong to this patch. I'll send a v3.

> +       int irq = data->rx_wakeup_irq;
> +       int err;
>
>         serial8250_suspend_port(data->line);
>
> +       pinctrl_pm_select_sleep_state(dev);
> +       if (irq >= 0) {
> +               err = enable_irq_wake(irq);
> +               if (err) {
> +                       dev_err(dev,
> +                               "failed to enable irq wake on IRQ %d: %d\n",
> +                               irq, err);
> +                       pinctrl_pm_select_default_state(dev);
> +                       serial8250_resume_port(data->line);
> +                       return err;
> +               }
> +       }
> +
>         return 0;
>  }

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

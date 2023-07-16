package com.waly.walyLearn.entities.pk;

import com.waly.walyLearn.entities.Offer;
import com.waly.walyLearn.entities.User;
import jakarta.persistence.*;

import java.util.Objects;

@Embeddable
public class EnrollmentPk {

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
    @ManyToOne
    @JoinColumn(name = "offer_id")
    private Offer offer;

    public EnrollmentPk(){}

    public EnrollmentPk(User user, Offer offer) {
        this.user = user;
        this.offer = offer;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Offer getOffer() {
        return offer;
    }

    public void setOffer(Offer offer) {
        this.offer = offer;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EnrollmentPk that = (EnrollmentPk) o;

        if (!Objects.equals(user, that.user)) return false;
        return Objects.equals(offer, that.offer);
    }

    @Override
    public int hashCode() {
        int result = user != null ? user.hashCode() : 0;
        result = 31 * result + (offer != null ? offer.hashCode() : 0);
        return result;
    }
}

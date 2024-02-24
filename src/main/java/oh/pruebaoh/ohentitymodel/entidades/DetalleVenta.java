package oh.pruebaoh.ohentitymodel.entidades;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import jakarta.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "detalle_venta")
public class DetalleVenta {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_venta", foreignKey = @ForeignKey(name = "fk_venta"), nullable = false)
    private Venta venta;

    @ManyToOne
    @JoinColumn(name = "id_producto", foreignKey = @ForeignKey(name = "fk_producto"), nullable = false)
    private Producto producto;

    @Column(name = "cantidad", nullable = false)
    private Integer cantidad;
}
